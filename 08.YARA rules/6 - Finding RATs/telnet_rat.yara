/*
    Look for signs that indicates telnet server enabled
*/
rule rat_telnet {
    meta:
        description = "Remote Admin tools enabled by Telnet server"
        version = "0.1"
    strings:
        $s1 = "software\\microsoft\\telnetserver" 
    condition:
        $s1
}

