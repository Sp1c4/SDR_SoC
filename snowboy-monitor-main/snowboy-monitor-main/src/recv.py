import socket
import struct
import wave
import os

class UdpRecver(object):
    """Audio stream receiver using UDP"""
    def __init__(self,
                 local_addr=('192.168.0.4',8080),
                 recv_rate=500000,
                 save_rate=16000):

        self.local_addr=local_addr
        self.udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.udp_socket.bind(self.local_addr)
        self.recv_rate=recv_rate
        self.save_rate=save_rate

    def recv(self,time=2):
        bytecount = 0
        packcount = 0
        audiodata = bytearray()

        for j in range(self.recv_rate*time//10):
            recv_data = self.udp_socket.recvfrom(21)
            pack = struct.unpack('B'*21,recv_data[0])
            if(pack[20] != packcount):
                continue
            packcount = (packcount + 1) % 256
            for i in range(10):
                if((pack[i*2] >= 128) | (pack[i*2+1] < 128)):
                    print("Illegal package!")
                    exit(-1)
                if((pack[i*2] >> 3) != bytecount):
                    continue
                bytecount = (bytecount + 1) % 16
                lo = int(pack[i*2+1])
                hi = int(pack[i*2])
                audiodata.extend((((hi % 8) << 13) + ((lo % 128) << 6)).to_bytes(2,byteorder='little'))

        self.audiobytes = bytes(audiodata)
        inputwav = wave.open("wav/r"+str(self.recv_rate)+".wav",'wb')

        inputwav.setframerate(self.recv_rate)
        inputwav.setnchannels(1)
        inputwav.setsampwidth(2)
        inputwav.writeframes(self.audiobytes)

        inputwav.close()

        os.system("sox wav/r"+str(self.recv_rate)+".wav -r "+str(self.save_rate)+" wav/"+str(self.save_rate)+".wav")

    def close(self):
        self.udp_socket.close()
