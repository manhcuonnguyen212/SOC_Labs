# Practice analyze PSExec 
### 1.PSExec
- PSExec is a remote command execution tool for system administrators that is included in “Sysinternals Suite” tools, but this is often used for lateral 
movement in targeted attacks as well.
- Important behaviors of PSExec options:
	- -r: To change the copied file name and the service name for remote computers (default: %SystemRoot%\PSEXESVC.exe and PSEXESVC)
	- -c: To copy a program to remote computers.  It is copied to Admin$ (%SystemRoot%)
	- -s: To be executed by SYSTEM account.
	- -u: To use a specific credential to log on to remote computers.  Logon type 2 & logon type3 is occurred
### 2.Typical behavior of PsExec
- It copies the PsExec service execution file (default: PSEXESVC.exe) to %SystemRoot% 
on remote computers with network logon (type 3)
- It registers the service (default: PSEXESVC), and starts the service to execute the 
command on the remote computer
- It stops the service (default: PSEXESVC), and removes the service on the remote 
computer after execution.
### 3.Important event IDs
	Security.evtx
		4624: An account was successfully logged on
	Ssystem.evtx
		7045: A service was installed in the system.
### 4.Network diagram 
![Image](images/0.png)
### 5.Detect PSExec by the default service name

- **Logon Win server 2022**
![Image](images/1.png)
![Image](images/2.png)

- **Run PSExec at the attacker's machine:192.168.1.3**
![Image](images/3.png)
![Image](images/4.png)
	
 - **Met an error that the user has not been granted the requested logon type:**
 	Configure on win server to allow logon as a network service
 ![Image](images/5.png)
 ![Image](images/6.png)

- **Run PSExec again:**
 ![Image](images/7.png)

- **Switch on win server 2022: analyze events**
 ![Image](images/8.png)
 ![Image](images/9.png)
 ![Image](images/10.png)
 ![Image](images/11.png)

- **In conclusion:<br>**
	- We found:
		- Event ID: 4624 with logon type 3 at 5/18/2026 8:29:25 PM. 
		- Event ID: 7045 with service name PSEXEC.exe at 5/18/2026 8:28:17 PM. 
	- Therefore, We can consider that attacker was used PSExec to launch an attack on win server 2022.
### 6.Detect PSExec by Finding changed service name
- If the attackers change the execution name and the service name of PSExec with -r option, we can still detect PSExec execution because of the following 
characteristics:
	- The PSExec service execution file (default: PSEXESVC.exe) is copied to 
“%SystemRoot%” directory on the remote computer
	- The service name is the same as the execution name without the “.exe” extension
	- The service is executed in “user mode”, not “kernel mode”.
	- “LocalSystem” account is used for the service account.
	- The actual account is used to execute the service execution file, not “SYSTEM”

- **Run PSExec with -r option to change the default name of PSExec**
 ![Image](images/12.png)
- **Switch on server 2022 and get event logs**
 ![Image](images/13.png)
 ![Image](images/14.png)
 ![Image](images/15.png)
