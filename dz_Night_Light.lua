-----------------------------------
-- Run enviromental scene LED -----
-----------------------------------
-- Night Light for LED stripe -----
-----------------------------------
--
-- Device that activates
--
--   3 - Virt_SLEEP
-- 118 - PIR Storarum
--   X - PIR Hall
-- 128 - PIR Kök
--

	
return {
	on = { devices = { 118, 128 } },

    execute = function(domoticz)

    if domoticz.devices(3).state                     == "On"      then      --  23 = Virt_SLEEP
            if  domoticz.devices(128).state          == "Off"     then      -- Pir: Kök
                
                domoticz.devices(42).switchOff().afterMin(1)                -- LED in Kitchen
                domoticz.devices(43).switchOff()                            -- LED in Hallway
            end end	
    
        if domoticz.devices(3).state                 == "On"     then       --  23 = Virt_SLEEP
            if  domoticz.devices(128).state          == "On"     then       -- Pir: Kök
                
                domoticz.devices(42).dimTo(20)                              -- LED in Kitchen
                domoticz.devices(43).dimTo(5)                               -- LED in Hallway
            end end
    
        if domoticz.devices(3).state                 == "On"      then      --  23 = Virt_SLEEP
            if  domoticz.devices(118).state          == "Off"     then      -- Pir: Storarum
                domoticz.devices(45).switchOff().afterMin(5)
            end end
       
        if domoticz.devices(3).state                 == "On"     then       --  23 = Virt_SLEEP
            if  domoticz.devices(118).state          == "On"     then       -- Pir: Storarum
                domoticz.devices(45).dimTo(15)
            end end

 
    end
}
