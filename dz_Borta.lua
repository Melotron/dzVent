---------------------
-- Set scene Borta --
---------------------

return { 
	       on = { devices = { 147 } },     -- Presence detection

    execute = function(domoticz)

-- När vi kommer hem
        if  domoticz.devices(147).state    == "On"     then --  Presence detection 
	    domoticz.devices(177).switchOn()                --  Storarum: Laddare
	    domoticz.devices(201).switchOn()                --  Nicole: Laddare
			
        end 

-- När vi går hemmifrån
        if  domoticz.devices(147).state    == "Off"     then --  Presence detection 
--          Lamps
            domoticz.devices(26).switchOff()    --  Storarum: Tak
            domoticz.devices(42).switchOff()    --  Kök: Led MI
            domoticz.devices(43).switchOff()    --  Hall: Led MI
            domoticz.devices(45).switchOff()    --  Storarum: LED MI
            domoticz.devices(53).switchOff()    --  Storarum: Fönster MI
	    domoticz.devices(93).switchOff()    --  Storarum: Gardin LED
	    domoticz.devices(101).switchOff()   --  Storarum Hue 1 
	    domoticz.devices(102).switchOff()   --  Storarum Hue 2
	    domoticz.devices(103).switchOff()   --  Storarum Hue 3
	    domoticz.devices(166).switchOff()   --  Sovrum: Magnus
	    domoticz.devices(174).switchOff()   --  Sovrum: Magnus Laddare
	    domoticz.devices(180).switchOff()   --  Sovrum: Edlyn
	    domoticz.devices(201).switchOff()   --  Nicole: Laddare
			
--          Virtual Switches
            domoticz.devices(1).switchOff().checkFirst()     --  Virt_Morning
            domoticz.devices(2).switchOff().checkFirst()     --  Virt_SLEEP_N
            domoticz.devices(3).switchOff().checkFirst()     --  Virt_SLEEP
            domoticz.devices(4).switchOff().checkFirst()     --  Virt_TV
            domoticz.devices(5).switchOff().checkFirst()     --  Virt_Manuell
            domoticz.devices(86).switchOff().checkFirst()    --  Virt_SLEEP_Sovrum 
            domoticz.devices(87).switchOff().checkFirst()    --  Virt_Manuellt_Sovrum
            domoticz.devices(88).switchOff().checkFirst()    --  Virt_Manuellt_Nicole
            domoticz.devices(89).switchOff().checkFirst()    --  Virt_Titta_TV
            domoticz.devices(90).switchOff().checkFirst()    --  Virt_MOOD_2
            domoticz.devices(91).switchOff().checkFirst()    --  Virt_MOOD_3
            domoticz.devices(92).switchOff().checkFirst()    --  Virt_MOOD_4
            
        end 
    
end }
