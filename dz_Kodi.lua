return {
	on = { devices = {81}, },

	execute = function(domoticz)
	    
	if domoticz.devices(81).state  == 'Video' then
	    if (domoticz.devices(145).lux >= 0) and (domoticz.devices(145).lux <= 8000 ) then
	         domoticz.devices(44).setDiscoMode(2)
    end end
    
	if domoticz.devices(81).state  == 'On' then
	   domoticz.devices(44).switchOff()

    end	end
}
