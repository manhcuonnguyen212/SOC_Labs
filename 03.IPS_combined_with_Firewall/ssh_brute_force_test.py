import socket
import time

target_ip = "192.168.1.19"   # IP máy SSH server
target_port = 22

attempts = 20
delay = 0.5

print(f"Generating {attempts} SSH connection attempts...")

for i in range(attempts):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(2)

        result = s.connect_ex((target_ip, target_port))

        if result == 0:
            print(f"[{i+1}] Connection opened")
        else:
            print(f"[{i+1}] Connection failed")

        s.close()

    except Exception as e:
        print(f"[{i+1}] Error: {e}")

    time.sleep(delay)

print("Finished.")