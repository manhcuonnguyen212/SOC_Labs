# 1.Powershell Remoting
	a powerful feature that lets you run PowerShell commands on remote computers 
### 2.Important Events:
- **Security log:**
	- 4624 → Logon successfully -> Logon Type: 3 = Network logon
	- 4634 -> Logoff
	- 4648 -> Explicit credentials được dùng
	- 4672 -> asigned to special priviledge(Admin)
### 3.Network diagram 
![Image](images/0.png)
### 4. The process of analyzing:
	4624 (Logon Type 3)
	      ↓
	4672 (nếu admin)
	      ↓
	91 WinRM session created
	      ↓
	400 PowerShell engine started
	      ↓
	4103 / 4104 command execution
	      ↓
	403 engine stopped
	      ↓
	4634 logoff
### 5. Practice
- Configure on client side:
	Set-WSManQuickConfig
	Enable-PSRemoting

![Image](images/1.png)

- Logon using Powershell remoting on attacker side:
![Image](images/2.png)
![Image](images/3.png)


- Switch on client side and analyze related event logs:
	**check EventID 4624**
![Image](images/4.png)
	**check EventID 4672 wheather admin privilege was asigned to the session**
![Image](images/5.png)
	**check EvenID 400: start a powershell session**
![Image](images/6.png)


