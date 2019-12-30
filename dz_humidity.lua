# This script are to send a notification when the humidity are to high on the sensor in the bedroom.
# Its simple but its working good.
#

return { active = true, on = { devices = { 79 }, },

	execute = function(domoticz, device)
	 if  (domoticz.devices(79).humidity >= 65 ) then
        domoticz.notify(device.name, 'High Humidity! Time to check it out ', domoticz.PRIORITY_EMERGENCY)
	end end
}
