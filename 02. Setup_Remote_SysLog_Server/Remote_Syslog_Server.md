### 1. Rsyslog & Syslog
### 2. Network Diagram
![Image](images/0.png)

- **Kali works as a rsyslog server and Ubuntu plays as a server that sends logs to kali**
![Image](images/1.png)

### 3. Setup Rsyslog Server

- **On kali, run 'sudo nano /etc/rsyslog.conf ' to configure rsyslog**
	- **Note: imudp for UDP and imtcp for TCP connection, both of them uses 514 port**
![Image](images/2.png)

- **Restart rsyslog**
![Image](images/3.png)
![Image](images/4.png)

- **using 'journalctl --unit=rsyslog -f' to check the service to be actived**
![Image](images/5.png)

-  **On client side(Ubuntu server): Creating a single file on /etc/rsyslog.d/remote.conf, which is a custom file for a specific rsyslog server**
	- **Note:
			syslog configuring format:  (service).level /path**
![Image](images/6.png)

	- **Restart rsyslog**
![Image](images/7.png)
![Image](images/8.png)

- **Using 'tail -f /var/log/syslog' to verify that the rsyslog server has received logs from Ubuntu_Server**
![Image](images/9.png)

- **Test log with 'logger'**
![Image](images/10.png)
![Image](images/11.png)

### 4. Filter contents 
- **On rsyslog server: run 'sudo nano /etc/rsyslog.d/filter_logs.conf' -> write down the logs of Ubuntu_Server on a specific file**
	**filter by $hostname**
![Image](images/12.png)
![Image](images/13.png)
![Image](images/14.png)
	
### 5. Creating an encrypted connection to the log server 
![Image](images/30.png)
- **- On client side: 
		Install stunnel: sudo apt install stunnel  
		Nano /etc/stunnel/stunnel.conf ***
![Image](images/15.png)
![Image](images/16.png)
![Image](images/17.png)
	**Restart stunel4**
![Image](images/18.png)
	**Run 'sudo naon /etc/rsyslog.d/remote.conf' to change the receiving IP**
![Image](images/19.png)
	**Restart rsyslog**
![Image](images/20.png)

- **On server side: 
	Install stunnel: sudo apt install stunnel **
![Image](images/21.png)
	**Generate certificate: **
![Image](images/22.png)
	**Nano /etc/stunnel/stunnel.conf **
![Image](images/23.png)
![Image](images/24.png)
	**change port in /etc/rsyslog.conf**
![Image](images/29.png)
![Image](images/25.png)
	**Monitor /var/log/Ubuntu-server to detect connection**
![Image](images/26.png)
	**Test log**
![Image](images/27.png)
![Image](images/28.png)