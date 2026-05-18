# Practice analyze PSExec 
1. PSExec
PSExec is a remote command execution tool for system administrators that is included in “Sysinternals Suite” tools, but this is often used for lateral 
movement in targeted attacks as well.
2. Typical behavior of PsExec
- It copies the PsExec service execution file (default: PSEXESVC.exe) to %SystemRoot% 
on remote computers with network logon (type 3)
- It registers the service (default: PSEXESVC), and starts the service to execute the 
command on the remote computer
- It stops the service (default: PSEXESVC), and removes the service on the remote 
computer after execution.