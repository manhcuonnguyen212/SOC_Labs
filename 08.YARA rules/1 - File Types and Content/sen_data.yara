/*
    Detect file content that could be PII/PHI
*/
rule sen_data {
    meta:
        description = "Find PII and PHI references"
    	version = "0.1"
    strings:
        // pii - Pattern 1 = SSN; Pattern 2 = Credit Card 
        // Phi - Pattern 1 = HIN; Pattern 2 = ICD 9; Pattern 3 = ICD 10
        $pii_pattern_1 = /[0-9]{3}-[0-9]{2}-[0-9]{4}/
        $pii_pattern_2 = /[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}/
        $phi_pattern_1 = /^[A-Za-z0-9]{8,}$/
        $phi_pattern_2 = /\b\d{3}\.\d{0,2}\b/
        $phi_pattern_3 = /\b[A-Z]\d{2}(\.\d{1,4})?\b/

    condition:
        any of ($pii_pattern_1, $pii_pattern_2, $phi_pattern_1, $phi_pattern_2, $phi_pattern_3)
}



