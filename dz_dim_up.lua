return {
	active = true,
	on = {
		devices = {
			'WAKEUP LIGHT',
		}
	},
	execute = function(domoticz, device)
		local licht = domoticz.devices('Slaapkamer')
		local WK = domoticz.devices('WAKEUP LIGHT')
		if (device.state == 'On') then
		    -- domoticz.devices('Lamp bank links').switchOn().forSec(2).repeatAfterSec(1, 3)
		    licht.switchOn()
		    licht.dimTo(1)
		    
		    for i = 1,100 do
		        t = i * 18
				licht.dimTo(i).afterSec(t)
				-- domoticz.log('WAKE UP LIGHT timer ' ..i)
			end
		    
	        
	        -- domoticz.devices('Lamp bank links').setNightMode()
			domoticz.log("WAKE UP LIGHT ACTIVE")
		end
		if (device.state == 'Off') then
		    licht.switchOff()
	   	end
		
	end
}
