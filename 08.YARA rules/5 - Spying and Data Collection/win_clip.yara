/*
    Indentify Windows API clipboard functions
*/
rule Win_Clip {
    meta:
        description = "Windows clipboard commands"
    	version = "0.1"
    strings:
        $c1 = "OpenClipboard"
        $c2 = "CloseClipboard"
        $c3 = "GetClipboardData"
        $c4 = "SetClipboardData"
    condition:
        any of them
}


