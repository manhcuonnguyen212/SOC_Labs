/*
    Detect possible DNS Stuffing by finding high subdomains
*/
rule Detect_DNS_Stuffing {
    meta:
        description = "Find more than 3 subdomains"
    	version = "0.1"
    strings:
        $subdomain_pattern = /([a-z0-9\-]{1,}\.){3,}[a-z0-9\-]{1,}/

    condition:
        $subdomain_pattern
}


