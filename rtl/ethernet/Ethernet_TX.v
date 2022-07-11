module Ethernet_TX
	(
		input rst_n,
		input GTXC,        			 
		//input [8:0] usedw,          
		input [7:0] rddata_fifo1,
		input [7:0] rddata_fifo2,
		input		afull_flag1,
		input		afull_flag2,	 
		output reg [7:0] E_TXD,      
		output reg E_TXEN,           
		output wire rden_fifo1,
		output wire rden_fifo2,
		output eth_end	     
	);
	reg				[7:0]			E_TXD_n;    	   
    reg								E_TXEN_n;		  
	reg				[31:0]			IP_Head_Data;      
	reg				[31:0]			IP_Head_Data_n;    
	reg				[3:0]			fsm_s ;            
	reg				[3:0]			fsm_s_n;           
	reg				[7:0]			fsm_time_cnt ;     
	reg				[7:0]			fsm_time_cnt_n;   
	reg								crc_rst;			
	reg								crc_rst_n;			
	reg								crc_en;				
	reg								crc_en_n;			
	reg  			[31:0] 			crc;				
	reg  			[31:0] 			crc_n;				
	wire  			[31:0] 			newcrc;	

	reg				[7:0]			addr_udp;		       
	
	parameter		E_IDLE=4'b0000,
					E_PREAMBLE=4'b0001,            	
					E_ENET_HEAD=4'b0010,	        
					E_IP_HEAD=4'b0011,              
					E_UDP_HEAD=4'b0100,  			
					E_UDP_DATA=4'b0101,				
					E_ENET_CRC=4'b0110,				
					E_END=4'b0111;					

	parameter		DATA_LEN=8'd21;
	
	parameter		E_PREAMBLE_55=8'h55,			
					E_PREAMBLE_D5=8'hD5,
					//Ethernet
					E_MAC_T={8'h00,8'h0c,8'h29,8'h61,8'hb4,8'h1b},			
					E_MAC_R=48'h001122334455,	 		    
					E_CLASS=16'h0800,          						//帧类型：0x0800    	        
					//IP
					E_IP_HEAD_1st=16'h4500,           				//ip首部的前16位版本号0x4（IPV4）,首部长度0x5,服务类型0x00
					E_IP_LENGTH=(16'd28 + DATA_LEN),					 			//20（ip首部）+8（UDP首部）+20（用户数据20个字节）=48字节>46字节
					E_IP_ID=16'h0000,								//ip标识号，不分片，所以都是0
					E_IP_HEAD_4st=16'h4000,           				//IP首部的第4个16字节
					E_IP_HEAD_5st=16'h8011,           				//生存时间0x80(128),协议0x11(17:UDP)
					//缺少16位首部校验和，在后面计算
					E_IP_ADD_R={8'd192,8'd168,8'd0,8'd2},   
					E_IP_ADD_T={8'd192,8'd168,8'd0,8'd4},   
					//UDP
					E_UDP_PORT_R=16'd8080,                  
					E_UDP_PORT_T=16'd8080,                  
					E_UDP_LENGTH=(16'd8 + DATA_LEN), 				    		//UDP长度：8（UDP首部）+20（用户数据20个字节）=28字节
					E_UDP_CRC=16'h0000;					    
	 						    

	// //----------rden_fifo------------------- 
	// always @(posedge GTXC or negedge rst_n)
	// 	begin
	// 		if(!rst_n)
	// 			rden_fifo1<=1'b0;
	// 		else
	// 			rden_fifo1<=rden_fifo_n1;		
	// 	end
	// always @(posedge GTXC or negedge rst_n)
	// 	begin
	// 		if(!rst_n)
	// 			rden_fifo2<=1'b0;
	// 		else
	// 			rden_fifo2<=rden_fifo_n2;		
	// 	end
		

	// assign	rden_fifo_n=((fsm_s==E_UDP_HEAD && fsm_time_cnt==8'd7)
	// 				   ||(fsm_s==E_UDP_DATA && fsm_time_cnt<(DATA_LEN-1'b1)))?1'b1:1'b0;
	//assign	rden_fifo_n=(fsm_s==E_UDP_DATA )?1'b1:1'b0;
	assign	rden_fifo1=(fsm_s==E_UDP_DATA && fsm_time_cnt[0]==1'b0 && fsm_time_cnt <= (DATA_LEN - 2'd2))?1'b1:1'b0;
	assign	rden_fifo2=(fsm_s==E_UDP_DATA && fsm_time_cnt[0]==1'b1 && fsm_time_cnt <= (DATA_LEN - 2'd2))?1'b1:1'b0;
	assign	eth_end = (fsm_s==E_END)?1'b1 :1'b0;

	always @(posedge GTXC or negedge rst_n) 
		begin
			if(!rst_n)
				addr_udp <= 8'b0;
			else if(fsm_s==E_END)
				addr_udp <= addr_udp + 1'b1;
		end
	

	always @(posedge GTXC or negedge rst_n)
		begin
			if(!rst_n)
				fsm_s<=E_IDLE;           		
			else
				fsm_s<=fsm_s_n;		
		end
		

	always@(*)                          
		begin
			case(fsm_s)         		
				E_IDLE:                    				
					//if(fsm_time_cnt>8'd96&&usedw>DATA_LEN)
					if(fsm_time_cnt>8'd96 && (afull_flag1 & afull_flag2 == 1'b1))  
						fsm_s_n=E_PREAMBLE;     			
					else
						fsm_s_n=fsm_s;         			
				E_PREAMBLE:                    	//前导码8字节		
					if(fsm_time_cnt==8'd7)     			
						fsm_s_n=E_ENET_HEAD;			
					else
						fsm_s_n=fsm_s;        		 
				E_ENET_HEAD:					//以太网首部14字节	
					if(fsm_time_cnt==8'd13)     	
						fsm_s_n=E_IP_HEAD;			
					else
						fsm_s_n=fsm_s;        		
				E_IP_HEAD:                      //ip首部20字节  	 
					if(fsm_time_cnt==8'd19)     	
						fsm_s_n=E_UDP_HEAD;			
					else
						fsm_s_n=fsm_s;        		
				E_UDP_HEAD:                     //udp首部8字节     
					if(fsm_time_cnt==8'd7)  		
						fsm_s_n=E_UDP_DATA;			
					else
						fsm_s_n=fsm_s; 
				E_UDP_DATA:                     //udp数据20字节     
					if(fsm_time_cnt==DATA_LEN-1'b1)	
						fsm_s_n=E_ENET_CRC;          
					else                           	
						fsm_s_n=fsm_s; 
				E_ENET_CRC:                     //fcs4字节     
					if(fsm_time_cnt==8'd3)			
						fsm_s_n=E_END;             	
					else                           	 
						fsm_s_n=fsm_s; 	
				E_END:                           	
						fsm_s_n=E_IDLE;             
										
				default:fsm_s_n=E_IDLE;   			
			endcase
		end	


	always @(posedge GTXC or negedge rst_n)
		begin
			if(!rst_n)
				fsm_time_cnt<=8'b0;
			else
				fsm_time_cnt<=fsm_time_cnt_n;		
		end
		

	always @(*)       
		begin 
		if(fsm_s==fsm_s_n && fsm_time_cnt<8'd250)         
				fsm_time_cnt_n=fsm_time_cnt+8'b1;//保持状态不变时计数到250      	
			else if(fsm_s==E_IDLE&&fsm_time_cnt==8'd250)
				fsm_time_cnt_n=fsm_time_cnt;//idle状态超时后保持250不变      		
			else                                     	
				fsm_time_cnt_n=8'b0;//切换状态时清零
		end
	

	always @(posedge GTXC or negedge rst_n)
		begin
			if(!rst_n)
				E_TXEN<=1'b0;
			else
				E_TXEN<=E_TXEN_n;		
		end
		

	always @(*)       //E_TXEN在前导码状态下置1，在结束状态置0
		begin 
			if(fsm_s==E_PREAMBLE) 						
				E_TXEN_n=1'b1;       					
			else if(fsm_s==E_END)    					  
				E_TXEN_n=1'b0; 
			else
				E_TXEN_n=E_TXEN; 						
		end	
	

	always @(posedge GTXC or negedge rst_n)
		begin
			if(!rst_n)
				IP_Head_Data<=32'b0;
			else
				IP_Head_Data<=IP_Head_Data_n;		
		end
		

	always @(*)       //ip首部校验和计算（先将校验和设为零，将ip首部16位16位相加，然后将计算结果的高16位和低16位相加，最后结果取反，即ip首部校验和
		begin 			//接收端校验采用类似方法，将带校验和的ip首部按照以上方法计算，计算结果为0则说明正确传输）
			if(fsm_s==E_PREAMBLE&&fsm_time_cnt==8'd1) 				
				IP_Head_Data_n=E_IP_HEAD_1st+E_IP_LENGTH+E_IP_ID+E_IP_HEAD_4st+E_IP_HEAD_5st
				+E_IP_ADD_R[15:0]+E_IP_ADD_R[31:16]+E_IP_ADD_T[15:0]+E_IP_ADD_T[31:16];       					   	
			else if(fsm_s==E_PREAMBLE&&fsm_time_cnt==8'd2)   		   
				IP_Head_Data_n=IP_Head_Data[31:16]+IP_Head_Data[15:0]; 
			else if(fsm_s==E_PREAMBLE&&fsm_time_cnt==8'd3)   		    
				IP_Head_Data_n=~IP_Head_Data[15:0]; 				
			else
				IP_Head_Data_n=IP_Head_Data; 								
		end
		

	always @(posedge GTXC or negedge rst_n)
		begin
			if(!rst_n)
				E_TXD<=8'b0;
			else
				E_TXD<=E_TXD_n;		
		end
		

	always @(*)       
		begin 
	
			if(fsm_s==E_PREAMBLE&&fsm_time_cnt<=8'd6) 		
				E_TXD_n=E_PREAMBLE_55;       					   
			else if(fsm_s==E_PREAMBLE&&fsm_time_cnt==8'd7)  
				E_TXD_n=E_PREAMBLE_D5;  

			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd0) 
				E_TXD_n=E_MAC_T[47:40];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd1) 
				E_TXD_n=E_MAC_T[39:32];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd2) 
				E_TXD_n=E_MAC_T[31:24];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd3) 
				E_TXD_n=E_MAC_T[23:16];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd4) 
				E_TXD_n=E_MAC_T[15: 8];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd5) 
				E_TXD_n=E_MAC_T[ 7: 0];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd6) 
				E_TXD_n=E_MAC_R[47:40];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd7) 
				E_TXD_n=E_MAC_R[39:32];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd8) 
				E_TXD_n=E_MAC_R[31:24];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd9) 
				E_TXD_n=E_MAC_R[23:16];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd10) 
				E_TXD_n=E_MAC_R[15: 8];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd11) 
				E_TXD_n=E_MAC_R[ 7: 0];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd12) 
				E_TXD_n=E_CLASS[15: 8];
			else if(fsm_s==E_ENET_HEAD&&fsm_time_cnt==8'd13) 
				E_TXD_n=E_CLASS[ 7: 0]; 	

			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd0) 
				E_TXD_n=E_IP_HEAD_1st[15: 8]; 
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd1) 
				E_TXD_n=E_IP_HEAD_1st[ 7: 0];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd2) 
				E_TXD_n=E_IP_LENGTH[15: 8];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd3) 
				E_TXD_n=E_IP_LENGTH[ 7: 0];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd4) 
				E_TXD_n=E_IP_ID[15: 8];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd5) 
				E_TXD_n=E_IP_ID[ 7: 0];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd6) 
				E_TXD_n=E_IP_HEAD_4st[15: 8];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd7) 
				E_TXD_n=E_IP_HEAD_4st[ 7: 0];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd8) 
				E_TXD_n=E_IP_HEAD_5st[15: 8];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd9) 
				E_TXD_n=E_IP_HEAD_5st[ 7: 0];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd10)  
				E_TXD_n=IP_Head_Data[15: 8];		
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd11)  
				E_TXD_n=IP_Head_Data[ 7: 0];			
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd12)  
				E_TXD_n=E_IP_ADD_R[31:24];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd13)  
				E_TXD_n=E_IP_ADD_R[23:16];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd14)  
				E_TXD_n=E_IP_ADD_R[15: 8];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd15)  
				E_TXD_n=E_IP_ADD_R[ 7: 0];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd16)  
				E_TXD_n=E_IP_ADD_T[31:24];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd17)  
				E_TXD_n=E_IP_ADD_T[23:16];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd18)  
				E_TXD_n=E_IP_ADD_T[15: 8];
			else if(fsm_s==E_IP_HEAD&&fsm_time_cnt==8'd19)  
				E_TXD_n=E_IP_ADD_T[ 7: 0];

			else if(fsm_s==E_UDP_HEAD&&fsm_time_cnt==8'd0) 
				E_TXD_n=E_UDP_PORT_R[15: 8];
			else if(fsm_s==E_UDP_HEAD&&fsm_time_cnt==8'd1) 
				E_TXD_n=E_UDP_PORT_R[ 7: 0];
			else if(fsm_s==E_UDP_HEAD&&fsm_time_cnt==8'd2) 
				E_TXD_n=E_UDP_PORT_T[15: 8];
			else if(fsm_s==E_UDP_HEAD&&fsm_time_cnt==8'd3) 
				E_TXD_n=E_UDP_PORT_T[ 7: 0];
			else if(fsm_s==E_UDP_HEAD&&fsm_time_cnt==8'd4) 
				E_TXD_n=E_UDP_LENGTH[15: 8];
			else if(fsm_s==E_UDP_HEAD&&fsm_time_cnt==8'd5) 
				E_TXD_n=E_UDP_LENGTH[ 7: 0];
			else if(fsm_s==E_UDP_HEAD&&fsm_time_cnt==8'd6) 
				E_TXD_n=E_UDP_CRC[15: 8];
			else if(fsm_s==E_UDP_HEAD&&fsm_time_cnt==8'd7) 
				E_TXD_n=E_UDP_CRC[ 7: 0]; 

			//else if(fsm_s==E_UDP_DATA&&fsm_time_cnt<=(DATA_LEN-1'b1)) 
				//E_TXD_n=rddata_fifo;
			else if(fsm_s==E_UDP_DATA&&fsm_time_cnt[0]==1'b0 && fsm_time_cnt <= (DATA_LEN - 2'd2)) 
				E_TXD_n=rddata_fifo1;
			else if(fsm_s==E_UDP_DATA&&fsm_time_cnt[0]==1'b1 && fsm_time_cnt <= (DATA_LEN - 2'd2)) 
				E_TXD_n=rddata_fifo2;	
			else if(fsm_s==E_UDP_DATA&&fsm_time_cnt==(DATA_LEN - 1'd1))		
				E_TXD_n=addr_udp;
	
			else if(fsm_s==E_ENET_CRC&&fsm_time_cnt==8'd0) 
				E_TXD_n={~newcrc[24], ~newcrc[25], ~newcrc[26], ~newcrc[27],~newcrc[28], ~newcrc[29], ~newcrc[30], ~newcrc[31]};
			else if(fsm_s==E_ENET_CRC&&fsm_time_cnt==8'd1)
				E_TXD_n={~crc[16], ~crc[17], ~crc[18], ~crc[19], ~crc[20], ~crc[21], ~crc[22], ~crc[23]};
			else if(fsm_s==E_ENET_CRC&&fsm_time_cnt==8'd2)
				E_TXD_n={~crc[8], ~crc[9], ~crc[10], ~crc[11], ~crc[12], ~crc[13], ~crc[14], ~crc[15]};
			else if(fsm_s==E_ENET_CRC&&fsm_time_cnt==8'd3)
				E_TXD_n={~crc[0], ~crc[1], ~crc[2], ~crc[3], ~crc[4], ~crc[5], ~crc[6], ~crc[7]};

			else                                     				
				E_TXD_n=1'b0; 			
		end
		

	always@(posedge GTXC or negedge rst_n)
	begin			
		if(!rst_n)
			crc_rst <= 1'b1;
		else 
			crc_rst <= crc_rst_n;
	end

	
	always@(*)
	begin
		if(fsm_s == E_PREAMBLE)
			crc_rst_n = 1'b0;
		else if(fsm_s ==E_ENET_HEAD )
			crc_rst_n = 1'b1;
		else
			crc_rst_n = crc_rst;
	end

	
	always@(posedge GTXC or negedge rst_n)
	begin			
		if(!rst_n)
			crc_en <= 1'b0;
		else 
			crc_en <= crc_en_n;
	end

	
	always@(*)
	begin
		if(fsm_s==E_ENET_CRC)
			crc_en_n = 1'b0;
		else if(fsm_s == E_ENET_HEAD)
			crc_en_n = 1'b1;
		else
			crc_en_n = crc_en;
	end

	
	always @ (posedge GTXC or negedge crc_rst)
	begin
		if(!crc_rst)
			crc <= 32'hffffffff;
		else 
			crc <= crc_n;
	end

	
	always @ (*)
	begin
		if(crc_en)
			crc_n = newcrc;
		else 
			crc_n = crc;
	end
	
	
	CRC32_D8				CRC32_D8_Init
	(
		.data				(E_TXD	),
		.crc				(crc		),
		.newcrc				(newcrc	)
	);

endmodule                   