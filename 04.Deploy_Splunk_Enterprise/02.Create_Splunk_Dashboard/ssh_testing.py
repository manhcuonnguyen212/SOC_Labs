import paramiko
from datetime import datetime

# Thông tin SSH
HOST = "192.168.1.18"
PORT = 22
USERNAME = ["testuser","root","admin","john","kenny","default_user","administrator","superadmin"]
PASSWORD = "Password123"
for x in range(0,len(USERNAME)):
	try:
	    print(f"[{datetime.now()}] Connecting to {HOST}...")

	    client = paramiko.SSHClient()
	    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

	    client.connect(
	        hostname=HOST,
	        port=PORT,
	        username=USERNAME[x],
	        password=PASSWORD
	    )

	    print(f"[{datetime.now()}] Login successful")

	    stdin, stdout, stderr = client.exec_command("whoami")

	    result = stdout.read().decode()
	    print("Command output:")
	    print(result)

	    client.close()

	except Exception as e:
	    print(f"Error: {e}")