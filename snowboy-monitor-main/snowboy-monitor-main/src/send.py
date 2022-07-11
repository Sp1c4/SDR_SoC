import socket
import wave
import struct
import math
import os

s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

wav500k = wave.open("../nihao.wav",'rb')

print("Package num = ",wav500k.getnframes()/10)
pcount = 0
bytearraytemp = bytearray()

hibyte = int()
lobyte = int()

data = bytes()
bytearraytemp = bytearray()

for i in range(wav500k.getnframes()):
    if(((i % 10) == 0) & (i != 0)):
        bytearraytemp.append(pcount%256)
        pcount = pcount + 1
        data = bytes(bytearraytemp)
        s.sendto(data, ('192.168.0.4', 8080))
        bytearraytemp = bytearray()
    temp = int.from_bytes(wav500k.readframes(1),byteorder='little')
    hibyte = ((i%16)*8) + (temp >> 13)
    lobyte = 128 + ((temp >> 6)%128)
    bytearraytemp.extend(hibyte.to_bytes(1,byteorder='little'))
    bytearraytemp.extend(lobyte.to_bytes(1,byteorder='little'))


    

    
    


wav500k.close()
s.close()