rule jpg
{
    meta:
        description = "Identifies if a file is a .jpg"
    strings:
        $s1 = {ff d8}
    condition:
        $s1 at 0
}


