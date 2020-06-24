--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Sovrum
--

return {
    on = { timer   = { "every 1 minutes" },
           devices = { 86, 87, 147, 76 }
           -- 86 = Virt_SLEEP_Sovrum
           -- 87 = Virt_Manuellt_Sovrum
           -- 65 = iDetect Anyone
       },

    execute = function(domoticz)

        if  (domoticz.devices(145).lux >= 18001 ) then

			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(86).state   == "Off"    and	    -- Virt_SLEEP_Sovrum 
               domoticz.devices(87).state   == "Off"    then	-- Virt_Manuellt_Sovrum
                   

            end end
			
 	    if (domoticz.devices(145).lux >= 12001) and (domoticz.devices(145).lux <= 18000 ) then
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(86).state   == "Off"    and	    -- Virt_SLEEP_Sovrum 
               domoticz.devices(87).state   == "Off"    then	-- Virt_Manuellt_Sovrum
                   

            end end
			
 	    if (domoticz.devices(145).lux >= 1401) and (domoticz.devices(145).lux <= 12000 ) then
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(86).state   == "Off"    and	    -- Virt_SLEEP_Sovrum 
               domoticz.devices(87).state   == "Off"    then	-- Virt_Manuellt_Sovrum
                   

            end end
			
       if   (domoticz.devices(145).lux >= 851) and (domoticz.devices(145).lux <= 1400) then 
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(86).state   == "Off"    and	    -- Virt_SLEEP_Sovrum 
               domoticz.devices(87).state   == "Off"    then	-- Virt_Manuellt_Sovrum
                   

            end end
		
       if   (domoticz.devices(145).lux >= 0) and (domoticz.devices(145).lux <= 850) then 
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(86).state   == "Off"    and	    -- Virt_SLEEP_Sovrum 
               domoticz.devices(87).state   == "Off"    then	-- Virt_Manuellt_Sovrum
                   

            end end 
end  }
