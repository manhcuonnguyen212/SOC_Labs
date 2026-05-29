/*
    References to Windows network commands
*/
rule win_net {
    meta:
        description = "Windows network commands"
    	version = "0.1"
    strings:
        $c1 = "ping" nocase
        $c2 = "pathping" nocase
        $c3 = "traceroute" nocase
        $c4 = "nslookup" nocase
        $c5 = "netstat" nocase
        $c6 = "route print" nocase
    condition:
        any of them
}

