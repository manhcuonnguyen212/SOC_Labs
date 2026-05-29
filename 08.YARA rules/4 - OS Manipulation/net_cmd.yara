/*
    References to Net command(s)
*/
rule net_cmd {
    meta:
        description = "Windows net commands"
    	version = "0.1"
    strings:        
        $c1 = "net use" nocase
        $c2 = "net share" nocase
        $c3 = "net view" nocase
        $c4 = "net user" nocase
        $c5 = "net group" nocase
        $c6 = "net localgroup" nocase
        $c7 = "net start" nocase
        $c8 = "net stop" nocase
        $c9 = "net send" nocase
    condition:
        any of them
}

