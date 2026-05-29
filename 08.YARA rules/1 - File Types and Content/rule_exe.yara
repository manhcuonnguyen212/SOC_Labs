rule exe
{
    meta:
        description = "Identifies if a file is a .exe"
    strings:
        $s1 = {4D 5A}
    condition:
        $s1 at 0
}



