/*
    Detect possible RAT using system web cam

*/
rule rat_webcam {
    meta:
        description = "Remote Administration Tool using webcam"
        version = "0.1"
    strings:
        $f1 = "avicap32.dll" nocase
        $c1 = "capCreateCaptureWindow" nocase
    condition:
        all of them
}


