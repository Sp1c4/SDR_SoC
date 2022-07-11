import snowboymonitor
import sys
import signal
import wave
import time

interrupted = False
interval_time = 0.00001


def signal_handler(signal, frame):
    global interrupted
    interrupted = True


def interrupt_callback():
    global interrupted
    return interrupted

if len(sys.argv) < 3:
    print("Error: need to specify model name and input wave file")
    print("Usage: python demo.py your.model input wave file")
    sys.exit(-1)

model = sys.argv[1]
file_name = sys.argv[2]

# capture SIGINT signal, e.g., Ctrl+C
signal.signal(signal.SIGINT, signal_handler)

monitor = snowboymonitor.HotwordMonitor(model, sensitivity=0.5,file_name=file_name)
print('Listening... Press Ctrl+C to exit')
print('Detector sample rate  = ',monitor.detector.SampleRate())
print('Detector channels num = ',monitor.detector.NumChannels())
print('Detector sample width = ',monitor.detector.BitsPerSample(),'bits')

# main loop
monitor.start(detected_callback=snowboymonitor.play_audio_file,
               interrupt_check=interrupt_callback,
               sleep_time=0.03)

monitor.terminate()
