/*
    Find P2P product references
*/
rule detect_P2P {
    meta:
        description = "Detects references to P2P products"        
    
    strings:
        $p2pStrings = /torrent|p2p|peer to peer|ed2k|magnet:|shareaza/i

    condition:
        any of them
}


/*
$p2pStrings = /torrent|p2p|peer to peer|ed2k|magnet:|shareaza/i: 
This defines a regular expression that matches various terms 
related to P2P, such as "torrent," "p2p," "peer to peer," "ed2k," "magnet:," and "shareaza." 
The 'i' flag makes the matching case-insensitive.
/