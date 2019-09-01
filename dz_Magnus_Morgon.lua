-------------------------------------------------
-- Starts when alarm goes off on Magnus phone. --
-------------------------------------------------
--
-- Turns on the light in Hall and Kök 
-- 
-- When Magnus Leaves home then his switch will go off in him script.
--

return {
	active = true,
	on = { devices = { 77 } },
	
	execute = function(domoticz, device)
		if (device.state == 'On') then
		    domoticz.devices(5).switchOn()     -- Turns on the manual light, so my Env scripts dont change the light.
		    domoticz.devices(43).dimTo(60)     -- Dim Hall
		    domoticz.devices(42).dimTo(60)     -- Dim Kök
		end
		
		if (device.state == 'Off') then
		    domoticz.devices(5).switchOff()
	   	end
		
	end
}
