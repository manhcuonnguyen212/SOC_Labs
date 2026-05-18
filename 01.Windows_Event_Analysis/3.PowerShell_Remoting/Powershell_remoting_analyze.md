# 1.Powershell Remoting 
### 2.Important Events:
- **Security log:**
	- 4624 → Đăng nhập thành công -> Logon Type: 3 = Network logon
	- 4634 -> Đăng xuất
	- 4648 -> Explicit credentials được dùng
	- 4672 -> Đăng nhập với quyền đặc biệt (Admin)
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