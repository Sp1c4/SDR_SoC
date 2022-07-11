import socket
import struct
import binascii
import io
local_addr=('',8080)
udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
udp_socket.bind(local_addr)



with open("music.pcm","wb") as f:
	while 1:
		recv_data = udp_socket.recvfrom(1024)
		result_recv_data=recv_data[0].hex()
		bytes_data = binascii.a2b_hex(result_recv_data)
	
		count = len(bytes_data)/2
		integers = list(struct.unpack('H'*int(count),bytes_data))
		print(result_recv_data,integers)
		if integers[1]!=integers[9]:
			for i in integers:
				true_int = i - 32768
				lowbit = true_int // 256
				highbit = true_int % 256
				truebit = (highbit<<7) + lowbit
				print(highbit,lowbit,truebit)
				f.write(truebit.to_bytes(2, byteorder="big"))
udp_socket.close()

