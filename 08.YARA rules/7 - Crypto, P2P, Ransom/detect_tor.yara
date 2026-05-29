/*
    Find references to Tor artifacts
*/
rule detect_tor {
    meta:
        description = "Detects artifacts related to the Tor network"
        version = "0.1"
    
    strings:
        $torStrings = /onion|\.onion|torproject\.org/i

    condition:
        any of them
}

/*
strings:: Defines the strings that the rule will search for. 
In this case, it looks for common terms associated with Tor, such as "onion," ".onion," and "torproject.org." 
The 'i' flag makes the matching case-insensitive.

$torStrings = /onion|\.onion|torproject\.org/i: This defines a regular expression that matches various terms related to Tor.
*/