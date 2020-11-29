return {
	on = {
		devices = {161, 162},
	},

	execute = function(domoticz, triggeredItem)

-- Trådfrin knapp Sovrum
        if domoticz.devices(161).state   == "B2C"    then	-- TRADFRI on/off switch T-1
		    domoticz.devices(3).switchOn()
		end
		
		 if domoticz.devices(161).state   == "B2L"    then	-- TRADFRI on/off switch T-1
			 domoticz.devices(86).switchOn()
		end
		
        if domoticz.devices(161).state   == "B1C"    then	-- TRADFRI on/off switch T-1
			 domoticz.devices(3).switchOff()
		end
		
		if domoticz.devices(161).state   == "B1L"    then	-- TRADFRI on/off switch T-1
			domoticz.devices(86).switchOff()
		end

-- Trådfri knapp Nicole
        if domoticz.devices(162).state   == "B2C"    then	-- TRADFRI on/off switch T-2
			domoticz.devices(3).switchOn()
		end

        if domoticz.devices(162).state   == "B1C"    then	-- TRADFRI on/off switch T-2
			domoticz.devices(3).switchOff()
		end
		
		if domoticz.devices(162).state   == "B2L"    then	-- TRADFRI on/off switch T-1
			domoticz.devices(2).switchOn()
		end
		
		if domoticz.devices(162).state   == "B1L"    then	-- TRADFRI on/off switch T-1
			domoticz.devices(2).switchOff()
		end

	end
}
