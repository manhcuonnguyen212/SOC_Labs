# Practice analyze PSExec 
### PSExec
PSExec is a remote command execution tool for system administrators that is included in “Sysinternals Suite” tools, but this is often used for lateral 
movement in targeted attacks as well.
### Typical behavior of PsExec
- It copies the PsExec service execution file (default: PSEXESVC.exe) to %SystemRoot% 
on remote computers with network logon (type 3)
- It registers the service (default: PSEXESVC), and starts the service to execute the 
command on the remote computer
- It stops the service (default: PSEXESVC), and removes the service on the remote 
computer after execution.
### Important event IDs
	Security.evtx
		4624: An account was successfully logged on
	Ssystem.evtx
		7045: A service was installed in the system.
### Network diagram 
![Image]("0.png")
### Detect PSExec by the default service name
- Logon Win server 2022
![Image]("1.png")
![Image]("2.png")
### Detect PSExec by Finding changed service name