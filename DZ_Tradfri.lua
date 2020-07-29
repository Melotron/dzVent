return {
	on = {
		devices = {161, 162},
	},

	execute = function(domoticz, triggeredItem)


        if domoticz.devices(161).state   == "B2C"    then	-- TRADFRI on/off switch T-1

			domoticz.devices(3).switchOff()
		end
		
        if domoticz.devices(162).state   == "B2C"    then	-- TRADFRI on/off switch T-2

			domoticz.devices(3).switchOff()
		end

        if domoticz.devices(161).state   == "B1C"    then	-- TRADFRI on/off switch T-1

			domoticz.devices(3).switchOn()
		end

        if domoticz.devices(162).state   == "B1C"    then	-- TRADFRI on/off switch T-2

			domoticz.devices(3).switchOn()
		end

	end
}
