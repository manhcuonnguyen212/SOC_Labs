/*
    Files and commands to capture audio
*/
rule sniff_audio {
    meta:
        description = "Capture audio file and commands"
        version = "0.1"
    strings:
        $f1 = "winmm.dll" nocase
        $c1 = "waveInStart"
        $c2 = "waveInReset"
        $c3 = "waveInAddBuffer"
        $c4 = "waveInOpen"
        $c5 = "waveInClose"
    condition:
        $f1 and 2 of ($c*)
}

