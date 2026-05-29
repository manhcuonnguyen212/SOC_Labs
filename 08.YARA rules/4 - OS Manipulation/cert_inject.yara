/*
    cert_inject.yara
*/
rule certificate {
    meta:
        description = "Inject cert in store"
    	version = "0.1"
    strings:
        $f1 = "Crypt32.dll" nocase
        $r1 = "software\\microsoft\\systemcertificates\\spc\\certificates" nocase
        $c1 = "CertOpenSystemStore"
    condition:
	all of them
}


