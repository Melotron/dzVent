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
	on = { devices = {  ['Motion*'] = {'between sunset and sunrise'},} },

    execute = function(domoticz)

    if domoticz.devices(128).state             == "Off"     and      --  PIR: Kök
       domoticz.devices(3).state               == "On"     then      -- Virt_Sleep
                
        domoticz.devices(42).switchOff().afterSec(20)                    -- LED in Kitchen
        --domoticz.devices(43).switchOff()                                 -- LED in Hallway
        end
    
    if domoticz.devices(128).state              == "On"      and       --  PIR: Kök
       domoticz.devices(3).state                == "On"     then       -- Virt_Sleep
                
        domoticz.devices(42).dimTo(10)                                -- LED in Kitchen
        --domoticz.devices(43).dimTo(5)                                 -- LED in Hallway
        end
    
    if domoticz.devices(118).state             == "Off"     and       --  PIR: Storarum
       domoticz.devices(3).state               == "On"     then       -- Virt_Sleep
                
        domoticz.devices(45).switchOff().afterMin(5)
        end
       
    if domoticz.devices(118).state             == "On"      and       --  PIR: Storarum
       domoticz.devices(3).state               == "On"     then       -- Virt_Sleep
                
        domoticz.devices(45).dimTo(10)
        end

    end
}
