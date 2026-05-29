/*
    Look for references of nc used as a reverse shell
*/
rule Nc_Reverse_Shell {
    meta:
        description = "Detect nc reverse shell references"
    	version = "0.1"
    strings:        
        $p1 = "nc.exe"
        $p2 = "ncat.exe"
        $p3 = "ncat"
        $s1 = "reverse shell"
        $s2 = "nc -l -p"
        $s3 = "ncat -l -p"
        $s4 = "--exec cmd.exe"
    condition:
        any of($p*) and any of ($s*)
}


