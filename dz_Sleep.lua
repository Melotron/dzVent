---------------------------------------------
-- Run when we are going to sleep          --
---------------------------------------------

return { 
	       on = { devices = { 3 } },

    execute = function(domoticz)
        
        if  domoticz.devices(3).state             == "On"     and     --  Virt_SLEEP 
	    domoticz.devices(147).state           == "On"     then    --  iDetect - Anyone
			
		domoticz.devices(44).switchOff()
		domoticz.devices(45).switchOff()
		domoticz.devices(54).switchOff()
		domoticz.devices(25).switchOff()
		domoticz.devices(42).switchOff()
		domoticz.devices(26).switchOff()
		domoticz.devices(43).switchOff()
		domoticz.devices(5).switchOff()
		domoticz.devices(55).switchOff()
		domoticz.devices(94).switchOff()
		domoticz.devices(95).switchOff()
		domoticz.devices(101).switchOff()
		domoticz.devices(102).switchOff()
		domoticz.devices(93).switchOff()
        end end
}
