return {
	active = true,
	on = { devices = { 76 } },
	
	execute = function(domoticz, device)
		local tak = domoticz.devices(26)
		-- local WK = domoticz.devices('WAKEUP LIGHT')
		if (device.state == 'On') then
		    -- domoticz.devices('Lamp bank links').switchOn().forSec(2).repeatAfterSec(1, 3)
		    tak.switchOn()
		    tak.dimTo(1)
		    
		    for i = 1,65 do
		        t = i * 2
				tak.dimTo(i).afterSec(t)
				domoticz.log('WAKE UP LIGHT timer ' ..i)
			end
		    
	        
	        -- domoticz.devices('Lamp bank links').setNightMode()
			domoticz.log("WAKE UP LIGHT ACTIVE")
		end
		if (device.state == 'Off') then
		    tak.switchOff()
	   	end
		
	end
}
