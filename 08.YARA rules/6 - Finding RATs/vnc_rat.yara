/*
    Locate references to VNC config file or commands
*/
rule rat_vnc {
    meta:
        description = "Remote Admin using VNC"
    	version = "0.1"
    strings:
        $f1 = "ultravnc.ini" nocase
        $c2 = "StartVNC"
        $c3 = "StopVNC"
    condition:
        any of them
}


