/*
    Inspect IIS logs
*/
rule iis_log
{
    meta:
        description = "Inspect IIS Logs"
        version = "0.1"
    strings:
        $s1 = "login.aspx"        
    condition:
        any of them
}

