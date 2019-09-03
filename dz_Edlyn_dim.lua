-------------------------------------------------
-- Starts when alarm goes off on Edlyns phone. --
-------------------------------------------------
--
-- It will dim up the light over the course of 
-- little over 2 minutes with the initial start.
-- It dims up 1 procent every 2nd sec.
--
-- And after that it will return to my normal
-- enviromental settings that runs every 1 minute.
--

return {
	active = true,
	on = { devices = { 76 } },
	
	execute = function(domoticz, device)
		local tak = domoticz.devices(26)       -- Sets the string for tak lampan
		local golv = domoticz.devices(25)      -- Sets the string for golv lampan
		if (device.state == 'On') then
		    domoticz.devices(5).switchOn()     -- Turns on the manual light, so my Env scripts dont change the light.
		    domoticz.devices(3).switchOff()    -- Turns off the Sleep switch.
		    domoticz.devices(43).dimTo(60)     -- Dim Hall
		    domoticz.devices(42).dimTo(100)    -- Dim Kök
		    tak.switchOn()
		    tak.dimTo(1)
		    golv.switchOn()
		    golv.dimTo(1)
		    
		    for i = 1,65 do
		        t = i * 2
				tak.dimTo(i).afterSec(t)
				--- golv.dimTo(i).afterSec(t)
				--- domoticz.log('WAKE UP LIGHT timer ' ..i)
			end
		    
	        -- domoticz.devices('Lamp bank links').setNightMode()
			-- domoticz.log("WAKE UP LIGHT ACTIVE")
		end
		if (device.state == 'Off') then
		domoticz.devices(5).switchOff()
        -- domoticz.log('Morning light off, returning to normal enviroment ')
	   	end
		
	end
}
