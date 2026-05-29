/*
    Detect references to PS Empire and commands
*/
rule PS_Empire {
    meta:
        description = "Find references to ps empire and commands"
    	version = "0.1"
    strings:
        $c1 = "Invoke-Empire"
        $s1 = "powershell-empire"        
        $s2 = "EmpireAgent"

    condition:
        any of them
}


