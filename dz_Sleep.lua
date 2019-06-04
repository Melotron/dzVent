---------------------------------------------
-- Run when we are going to sleep          --
---------------------------------------------

return { 
	       on = { devices = { 3, 1 } 
       },

    execute = function(domoticz)

        if domoticz.devices(3).state    == "On"     and     --  Virt_SLEEP 
           domoticz.devices(1).state    == "Off"    and     --  Virt_Morning
           domoticz.devices(5).state    == "Off"    and     --  Virt_Manuell
           domoticz.devices(71).state   == "On"     then    --  iDetect - Anyone
           domoticz.devices(42).switchOff().checkFirst()
           domoticz.devices(43).switchOff().checkFirst()
           domoticz.devices(44).switchOff().checkFirst()
           domoticz.devices(45).switchOff().checkFirst()
           domoticz.devices(54).switchOff().checkFirst()
           domoticz.devices(29).switchOff().checkFirst()
           domoticz.devices(25).switchOff().checkFirst()
           domoticz.devices(26).switchOff().checkFirst()
--           print("Good Night")
        end
     
        if domoticz.devices(3).state   == "On"     and     --  Virt_SLEEP  
           domoticz.devices(1).state   == "On"     and     --  Virt_Morning 
           domoticz.devices(5).state   == "Off"    and     --  Virt_Manuell
           domoticz.devices(71).state  == "On"     then    --  iDetect - Anyone
           domoticz.devices(1).switchOff().checkFirst()
--           print("Both Sleep and Morning are on, Turning OFF Morning switch")
        end
end}
