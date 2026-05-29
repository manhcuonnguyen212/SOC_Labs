rule exe2
{
    meta:
        description = "Identifies if a file is a .exe"
            
    condition:
        uint16(0) == 0x5A4D
}


