/*
    Find references to turning off AV
*/
rule no_av {
    meta:
        description = "Contains references to security software"
        version = "0.1"
    strings:
        $f1 = "AAWTray.exe" nocase wide ascii
        $f2 = "Ad-Aware.exe" nocase wide ascii
        $f3 = "MSASCui.exe" nocase wide ascii
        $f4 = "_avp32.exe" nocase wide ascii
        $f5 = "_avpcc.exe" nocase wide ascii
        $f6 = "_avpm.exe" nocase wide ascii
        $f7 = "aAvgApi.exe" nocase wide ascii
        $f8 = "ackwin32.exe" nocase wide ascii
        $f9 = "adaware.exe" nocase wide ascii
        $f10 = "advxdwin.exe" nocase wide ascii
        $f11 = "agentsvr.exe" nocase wide ascii
        $f12 = "agentw.exe" nocase wide ascii
        $f13 = "alertsvc.exe" nocase wide ascii
        $f14 = "alevir.exe" nocase wide ascii
        $f15 = "alogserv.exe" nocase wide ascii
        $f16 = "amon9x.exe" nocase wide ascii
    condition:
        any of them
}

