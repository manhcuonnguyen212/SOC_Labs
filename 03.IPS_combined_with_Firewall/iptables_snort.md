### 1. Overview of iptables + snort
### 2. network diagram
![Image](images/0.png)
### 3. Setup
![Image](images/1.png)
- **enable network adapter on ubuntu_server_0: internal network: 10.0.100.0/24**
![Image](images/2.png)
- **enable network adapter on kali:**
	- internal network 1: 10.0.100.0/24
	- internal network 2: 192.168.3.0/24
![Image](images/3.png)
![Image](images/4.png)
- **enable network adapter on ubuntu_server_1:**
	- internal network 1: 192.168.3.0/24
	- internal network 2: bridged adapter, which is used to connect to the Internet
![Image](images/5.png)
![Image](images/6.png)
- **Configure on Ubuntu serser 0:**
	- set static ip and default gateway
![Image](images/7.png)
- **Configure on kali:**
	- set static ip/routes and ping test the connection
![Image](images/8.png)
![Image](images/9.png)
![Image](images/14.png)
- **Configure on Ubuntu serser 1:**
	- set static ip/routes
![Image](images/10.png)
![Image](images/13.png)
- **Configure iptables to allow traffic from nework access to webserver on ubuntu server 0**
	- **1. On kali**
![Image](images/15.png)
![Image](images/16.png)
![Image](images/17.png)
	- **2. On Ubuntu server 0: Test connection**
![Image](images/18.png)

- **Configure NAT & port-fowarding on defaut gateway(Ubuntu server 1):**
	- **NAT**
![Image](images/19.png)
![Image](images/20.png)

	- **Port-forwarding**
		- **Configure port-fowrading to SSH server: 10.0.100.10:22***
![Image](images/21.png)
![Image](images/22.png)
![Image](images/23.png)
![Image](images/24.png)
		- **Configure port-fowrading to web server: 10.0.100.10:80***
![Image](images/25.png)
![Image](images/26.png)
![Image](images/27.png)

- **Configure Snort**
	- **create rules**
![Image](images/28.png)
![Image](images/29.png)
	- **delete FORWARD chains**
![Image](images/30.png)
	- create a queue to get packets from iptables
![Image](images/32.png)
![Image](images/31.png)
![Image](images/35.png)

	- run 
![Image](images/33.png)
![Image](images/34.png)

	-**case study: ssh brute force**
![Image](images/40.png)
![Image](images/36.png)
![Image](images/37.png)
![Image](images/38.png)
![Image](images/39.png)