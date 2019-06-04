-- Fönster lampor 

return { 
    on = { devices = { 61, 2 } 
       },

    execute = function(domoticz)

            if domoticz.devices(61).state         == "On"     and   -- Virt_Windows
               domoticz.devices(2).state          == "Off"    then  -- Virt Sleep
               domoticz.devices(53).setKelvin(100)
               domoticz.devices(53).dimTo(60).checkFirst()
--               domoticz.devices(XXX).switchOn()                     -- Not in list, switch broken.
            end
			   
            if domoticz.devices(61).state          == "On"    and   -- Virt_Windows
               domoticz.devices(2).state           == "On"    then  -- Virt Sleep
               domoticz.devices(53).setNightMode()
            end
		   
            if domoticz.devices(61).state        == "Off"    and   -- Virt_Windows
               domoticz.devices(2).state          == "Off"    then  -- Virt Sleep
               domoticz.devices(53).switchOff().checkFirst()                     -- Turnoff Livingroom lamp			   
--               domoticz.devices(XXX).switchOff()                    -- Not in list, switch broken.
            end end }
