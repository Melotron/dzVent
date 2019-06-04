---------------------
-- Set scene Borta --
---------------------

return { 
	       on = { devices = { 71 } },     -- Presence detection

    execute = function(domoticz)

        if  domoticz.devices(71).state    == "Off"     then --  Presence detection 
--          Lamps
            domoticz.devices(25).switchOff().checkFirst()    --  Storarum: Golv
            domoticz.devices(26).switchOff().checkFirst()    --  Storarum: Tak
            domoticz.devices(29).switchOff().checkFirst()    --  Storarum: Sido
            domoticz.devices(31).switchOff().checkFirst()    --  Nicole: Natt lampa
            domoticz.devices(33).switchOff().checkFirst()    --  Nicole: Color
            domoticz.devices(35).switchOff().checkFirst()    --  Kök: Fönster
            domoticz.devices(42).switchOff().checkFirst()    --  Kök: Led MI
            domoticz.devices(43).switchOff().checkFirst()    --  Hall: Led MI
            domoticz.devices(44).switchOff().checkFirst()    --  Storarum: TV MI
            domoticz.devices(45).switchOff().checkFirst()    --  Storarum: LED MI
            domoticz.devices(53).switchOff().checkFirst()    --  Storarum: Fönster MI
            domoticz.devices(54).switchOff().checkFirst()    --  Storarum: Sido RGBCCT
--          Virtual Switches
            domoticz.devices(1).switchOff().checkFirst()   --  Virt_Morning
            domoticz.devices(2).switchOff().checkFirst()   --  Virt_SLEEP_N
            domoticz.devices(3).switchOff().checkFirst()   --  Virt_SLEEP
            domoticz.devices(4).switchOff().checkFirst()   --  Virt_TV
            domoticz.devices(5).switchOff().checkFirst()   --  Virt_Manuell
--            print("Bye Bye")
        end end }
