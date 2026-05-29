rule PDF_File {
    meta:
        description = "Identifies if a file is a .pdf"
    strings:
        $s1 = { 25 50 44 46 }
    condition:
        $s1 at 0
}

