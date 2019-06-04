---------------------------------------------
-- Run when we are going to sleep          --
---------------------------------------------

return { 
	       on = { devices = { 2, 78 } 
       },

    execute = function(domoticz)

        if domoticz.devices(2).state    == "On"     and     -- Virt_SLEEP_N
           domoticz.devices(71).state   == "On"     then    -- iDetect - Anyone
           domoticz.devices(31).switchOn().checkFirst()
           domoticz.devices(33).switchOff().afterMin(30)
--           print("Good Night Nicole")
        end
     
        if  domoticz.devices(2).state    == "Off"   and      -- Virt_SLEEP_N
           domoticz.devices(71).state   == "On"     then     -- iDetect - Anyone
           domoticz.devices(31).switchOff().checkFirst()
--           print("Good Morning Nicole")
        end
end}
