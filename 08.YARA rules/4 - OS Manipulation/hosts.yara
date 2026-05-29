/*
    Find references to hosts files
*/
rule host_file {
    meta:
        description = "Find references to the hosts file"
    	version = "0.1"
    strings:
        $f1 = "C:\\Windows\\System32\\drivers\\etc\\hosts" nocase
    condition:
        $f1
}




