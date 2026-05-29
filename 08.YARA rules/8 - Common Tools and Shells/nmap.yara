/*
    Search for nmap strings
*/
rule Detect_Nmap {
    meta:
        description = "Inspect file for nmap references"
    	version = "0.1"
    strings:
        $nmap_string1 = "Nmap" nocase
        $nmap_string2 = "nmap.org" nocase
        $nmap_string3 = "Zenmap" nocase
        
    condition:
        any of them
}


