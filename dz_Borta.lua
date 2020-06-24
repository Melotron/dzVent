---------------------
-- Set scene Borta --
---------------------

return { 
	       on = { devices = { 147 } },     -- Presence detection

    execute = function(domoticz)

        if  domoticz.devices(147).state    == "Off"     then --  Presence detection 
--          Lamps
            domoticz.devices(25).switchOff()    --  Storarum: Golv
            domoticz.devices(26).switchOff()    --  Storarum: Tak
            domoticz.devices(31).switchOff()    --  Nicole: Natt lampa
            domoticz.devices(34).switchOff()    --  Magnus Laddar
            domoticz.devices(35).switchOff()    --  Kök: Fönster
            domoticz.devices(42).switchOff()    --  Kök: Led MI
            domoticz.devices(43).switchOff()    --  Hall: Led MI
            domoticz.devices(44).switchOff()    --  Storarum: TV MI
            domoticz.devices(45).switchOff()    --  Storarum: LED MI
            domoticz.devices(53).switchOff()    --  Storarum: Fönster MI
            domoticz.devices(54).switchOff()    --  Storarum: Sido RGBCCT
	    domoticz.devices(55).switchOff()
	    domoticz.devices(93).switchOff()
	    domoticz.devices(94).switchOff()
	    domoticz.devices(95).switchOff()
	    domoticz.devices(101).switchOff()
	    domoticz.devices(102).switchOff()
	    domoticz.devices(103).switchOff()
--          Virtual Switches
            domoticz.devices(1).switchOff().checkFirst()     --  Virt_Morning
            domoticz.devices(2).switchOff().checkFirst()     --  Virt_SLEEP_N
            domoticz.devices(3).switchOff().checkFirst()     --  Virt_SLEEP
            domoticz.devices(4).switchOff().checkFirst()     --  Virt_TV
            domoticz.devices(5).switchOff().checkFirst()     --  Virt_Manuell
            domoticz.devices(86).switchOff().checkFirst()    --  Virt_SLEEP_Sovrum 
            domoticz.devices(87).switchOff().checkFirst()    --  Virt_Manuellt_Sovrum
            domoticz.devices(88).switchOff().checkFirst()    --  Virt_Manuellt_Nicole
            domoticz.devices(89).switchOff().checkFirst()    --  Virt_MOOD_1
            domoticz.devices(90).switchOff().checkFirst()    --  Virt_MOOD_2
            domoticz.devices(91).switchOff().checkFirst()    --  Virt_MOOD_3
            domoticz.devices(92).switchOff().checkFirst()    --  Virt_MOOD_4
        end end }
