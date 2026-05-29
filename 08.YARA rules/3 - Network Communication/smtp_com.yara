/*
    Detect SMTP command content
*/
rule SMTP_com {
    meta:
        description = "Find SMTP command references"
    	version = "0.1"

    strings:
        $c1 = "HELO"
        $c2 = "EHLO"
        $c3 = "MAIL FROM:"
        $c4 = "RCPT TO:"
    condition:
        any of them
}

