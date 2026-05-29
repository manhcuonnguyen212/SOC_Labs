/*
    Find references to p2p.h functions
*/
rule DIY_P2P {
    meta:
        description = "Communications over P2P network"
    	version = "0.1"
    strings:
     	$c1 = "PeerCollab"
    condition:
        $c1
}

