/*
    Inspect Apache logs
*/
rule apache_log
{
    meta:
        description = "Inspect Apache Logs"
        version = "0.1"
    strings:
        $s1 = "http:"        
    condition:
        any of them
}


