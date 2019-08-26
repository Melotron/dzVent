-- Fönster lampor 

return {
	on = { devices = { 61, 3 } },

    execute = function(domoticz)


            if domoticz.devices(61).state         == "On"     and   -- Virt_Windows
               domoticz.devices(3).state          == "Off"    then  -- Virt Sleep
			   -- Send url to Livingroom
               domoticz.devices(53).setKelvin(5000)
               domoticz.devices(53).dimTo(40)
			   -- Turnon Kitchen lamp
--			   domoticz.devices(XXX).switchOn()                     -- Not in list
			end
			   
			if domoticz.devices(61).state          == "On"    and   -- Virt_Windows
			   domoticz.devices(3).state           == "On"    then  -- Virt Sleep
               -- Send night light Livingroom 53
              domoticz.devices(53).setNightMode()
		    end
		   
		     if domoticz.devices(61).state        == "Off"    then  -- Virt_Windows
			   -- Send url to Livingroom 53
			   domoticz.devices(53).switchOff().checkFirst()                     -- Turnoff Livingroom lamp			   
--			   domoticz.devices(XXX).switchOff()                    -- Not in list
			end end }
