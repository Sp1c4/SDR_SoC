import pyaudio

# 初始化播放器
p = pyaudio.PyAudio()
stream = p.open(format=p.get_format_from_width(2), channels=1, rate=50000, output=True)

# 将 pcm 数据直接写入 PyAudio 的数据流
with open("music.pcm", "rb") as f:
    stream.write(f.read())

stream.stop_stream()
stream.close()
p.terminate()
