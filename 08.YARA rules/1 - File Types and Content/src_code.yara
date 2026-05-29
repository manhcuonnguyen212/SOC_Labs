/*
    Indentify issues in source code
*/
rule Weak_SSL_TLS_Ciphers_Pattern {
    strings:
        $weakCipher1 = "SSL_RSA_WITH_DES_CBC_SHA" nocase
        $weakCipher2 = "SSLv2" nocase
    condition:
        any of them
}

rule Insecure_Crypto_Pattern {
    strings:
        $insecureCrypto1 = "MD5" nocase
        $insecureCrypto2 = "DES" nocase
    condition:
        any of them
}

rule Unvalidated_Input_Pattern {
    strings:
        $unvalidatedInput1 = "gets("
        $unvalidatedInput2 = "scanf(" nocase
    condition:
        any of them
}

rule Path_Traversal_Pattern {
    strings:
        $pathTraversal1 = "../"
        $pathTraversal2 = "../../../../"
    condition:
        any of them
}

rule XSS_Pattern {
    strings:
        $xssPattern1 = "<script>" nocase
        $xssPattern2 = "document.cookie" nocase
    condition:
        any of them
}

rule SQL_Injection_Pattern {
    strings:
        $sqlInjection1 = "SELECT * FROM" nocase
        $sqlInjection2 = "UNION SELECT" nocase
    condition:
        any of them
}

