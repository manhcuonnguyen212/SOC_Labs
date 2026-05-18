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
![image]("D:\SOC_Labs\01.Windows_Event_Analysis\PSExec_Analysis\Screenshot 2026-05-18 204928.png"
### Detect PSExec by the default service name
- Logon Win server 2022
![image]("D:\SOC_Labs\01.Windows_Event_Analysis\PSExec_Analysis\Screenshot (285).png")
### Detect PSExec by Finding changed service name