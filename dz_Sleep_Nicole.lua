---------------------------------------------
-- Run when we are going to sleep          --
---------------------------------------------

	
return { 
	       on = { devices = { 2 } },

    execute = function(domoticz)

-- When nicole are going to sleep, with light light on the led.

        if  domoticz.devices(2).state    == "On"     and     -- Virt_SLEEP_N
			domoticz.devices(147).state   == "On"     then    -- iDetect - Anyone
			--domoticz.devices(XX).switchOff().afterMin(30)
			--domoticz.devices(XX).switchOff()
        end
     
        if  domoticz.devices(2).state    == "Off"     and     -- Virt_SLEEP_N
			domoticz.devices(147).state   == "On"     then     -- iDetect - Anyone
            --domoticz.devices(XX).switchOff()
        end end
}
