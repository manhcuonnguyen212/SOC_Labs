/*
    Network IRC Detection
*/
rule network_irc {
    meta:                
        description = "Detection of IRC network communication"
        version = "0.1"
    strings:
        $c1 = "JOIN"
        $c2 = "NICK" 
        $c3 = "PING"
	    $c4 = "PRIVMSG"
        $c5 = "USER"
    condition:
        2 of them

}



