onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/u_sdr_pad/RSTn
add wave -noupdate /testbench/u_sdr_pad/u_logic/HADDR
add wave -noupdate /testbench/u_sdr_pad/u_logic/vis_pc_o
add wave -noupdate /testbench/u_sdr_pad/SDA
add wave -noupdate /testbench/u_sdr_pad/SCL
add wave -noupdate /testbench/u_sdr_pad/SDA_ENABLE
add wave -noupdate /testbench/u_sdr_pad/i2c/PSELx
add wave -noupdate /testbench/u_sdr_pad/i2c/PADDR
add wave -noupdate /testbench/u_sdr_pad/i2c/PWDATA
add wave -noupdate /testbench/u_sdr_pad/i2c/PWRITE
add wave -noupdate /testbench/u_sdr_pad/i2c/PENABLE
add wave -noupdate /testbench/u_sdr_pad/i2c/DUT_APB/WRITE_DATA_ON_TX
add wave -noupdate /testbench/u_sdr_pad/i2c/DUT_APB/READ_DATA_ON_RX
add wave -noupdate /testbench/u_sdr_pad/i2c/DUT_APB/INTERNAL_I2C_REGISTER_CONFIG
add wave -noupdate /testbench/u_sdr_pad/i2c/DUT_APB/INTERNAL_I2C_REGISTER_TIMEOUT
add wave -noupdate -expand /testbench/u_sdr_pad/i2c/DUT_FIFO_TX/mem
add wave -noupdate /testbench/u_sdr_pad/i2c/DUT_I2C_INTERNAL_RX_TX/state_tx
add wave -noupdate /testbench/u_sdr_pad/i2c/DUT_I2C_INTERNAL_RX_TX/RESPONSE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {212031 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 238
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits fs
update
WaveRestoreZoom {210996 ps} {215097 ps}
