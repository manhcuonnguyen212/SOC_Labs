/*
    Detect FTP command content
*/
rule FTP_com {
    meta:
        description = "Find FTP command references"
    	version = "0.1"

    strings:
        $c1 = "USER"
        $c2 = "PASS"
        $c3 = "RETR"
        $c4 = "STOR"
    condition:
        any of them
}

