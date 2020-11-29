---------------------------------------------
-- Run when we are going to sleep          --
---------------------------------------------

return { 
	       on = { devices = { 3 } },

    execute = function(domoticz)
        
        if  domoticz.devices(3).state             == "On"     and     --  Virt_SLEEP 
	        domoticz.devices(147).state           == "On"     then    --  iDetect - Anyone
			
	        domoticz.devices(2).switchOn()
	        domoticz.devices(42).switchOff()
	        domoticz.devices(4).switchOff()
	        domoticz.devices(5).switchOff()
	        domoticz.devices(26).switchOff()
	        domoticz.devices(45).switchOff()
	        domoticz.devices(53).switchOff()
	        domoticz.devices(55).switchOff()
	        domoticz.devices(89).switchOff()
	        domoticz.devices(93).switchOff()
	        domoticz.devices(94).switchOff()
	        domoticz.devices(95).switchOff()
	        domoticz.devices(101).switchOff()
	        domoticz.devices(102).switchOff()
	        domoticz.devices(103).switchOff()
	        domoticz.devices(152).switchOff()
	        domoticz.devices(42).switchOff()
	        domoticz.devices(43).switchOff()
	        domoticz.devices(86).switchOn()
  
        end end
}
