/*
    Inspect FTP server logs
*/
rule ftp_log
{
    meta:
        description = "Inspect FTP server Logs"
        version = "0.1"
    strings:
        $s1 = "user2" nocase
    condition:
        any of them
}


