--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Nicoles room
--

return {
    on = { timer   = { "every 1 minutes" },
           devices = { 2, 88, 147, 76 }
           --  2 = Virt_SLEEP_Nicole
           -- 88 = Virt_Manuellt_Nicole
           -- 65 = iDetect Anyone
       },

    execute = function(domoticz)

        if  (domoticz.devices(145).lux >= 18001 ) then
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(2).state    == "Off"    and	    -- Virt_SLEEP_Nicole  
               domoticz.devices(88).state   == "Off"    then	-- Virt_Manuellt_Nicole
                   

            end end
			
 	    if (domoticz.devices(145).lux >= 12001) and (domoticz.devices(145).lux <= 18000 ) then
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(2).state    == "Off"    and	    -- Virt_SLEEP_Nicole  
               domoticz.devices(88).state   == "Off"    then	-- Virt_Manuellt_Nicole
                   

            end end
			
 	    if (domoticz.devices(145).lux >= 1401) and (domoticz.devices(145).lux <= 12000 ) then
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(2).state    == "Off"    and	    -- Virt_SLEEP_Nicole  
               domoticz.devices(88).state   == "Off"    then	-- Virt_Manuellt_Nicole
                   

            end end
			
       if   (domoticz.devices(145).lux >= 851) and (domoticz.devices(145).lux <= 1400) then 
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(2).state    == "Off"    and	    -- Virt_SLEEP_Nicole  
               domoticz.devices(88).state   == "Off"    then	-- Virt_Manuellt_Nicole
                   

            end end
		
       if   (domoticz.devices(145).lux >= 0) and (domoticz.devices(145).lux <= 850) then 
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(2).state    == "Off"    and	    -- Virt_SLEEP_Nicole  
               domoticz.devices(88).state   == "Off"    then	-- Virt_Manuellt_Nicole
                   

            end end 
end  }
