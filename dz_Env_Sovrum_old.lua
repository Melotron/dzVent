--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Sovrum
--

return {
    on = { timer   = { "every 1 minutes" },
           devices = { 86, 87, 147, 76 }
           -- 86  = Virt_SLEEP_Sovrum 147 = iDetect - Anyone
       },

    execute = function(domoticz)
    local Kelvin = domoticz.time.matchesRule('at 18:01-07:00') and 75 or 40   -- 75 during nighttime and 40 during day
    
-- När vi går hemmifrån
        if domoticz.devices(150).state   == "Off"     and	    -- iDetect - Edlyn
           domoticz.devices(151).state   == "Off"     then 	    -- iDetect - Magnus

           domoticz.devices(166).switchOff() 
           domoticz.devices(180).switchOff() 
        end

-- Normalt när vi är hemma.
        if  (domoticz.devices(145).lux >= 3001 ) then

			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(86).state   == "Off"    and	    -- Virt_SLEEP_Sovrum 
               domoticz.devices(87).state   == "Off"    then	-- Virt_Manuellt_Sovrum
                
               domoticz.devices(166).switchOff() 
               domoticz.devices(180).switchOff() 

            end end
			
			
 	    if (domoticz.devices(145).lux >= 1001) and (domoticz.devices(145).lux <= 2000 ) then
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(86).state   == "Off"    and	    -- Virt_SLEEP_Sovrum 
               domoticz.devices(87).state   == "Off"    then	-- Virt_Manuellt_Sovrum
                   
               domoticz.devices(166).dimTo(10)
               domoticz.devices(166).setKelvin(Kelvin)  
               domoticz.devices(180).dimTo(10)
               domoticz.devices(180).setKelvin(Kelvin)

            end end
			
		
       if   (domoticz.devices(145).lux >= 0) and (domoticz.devices(145).lux <= 1001) then 
			if domoticz.devices(147).state   == "On"     and	    -- iDetect - Anyone
               domoticz.devices(86).state   == "Off"    and	    -- Virt_SLEEP_Sovrum 
               domoticz.devices(87).state   == "Off"    then	-- Virt_Manuellt_Sovrum
                   
               domoticz.devices(166).dimTo(40)
               domoticz.devices(166).setKelvin(Kelvin)  
               domoticz.devices(180).dimTo(40)
               domoticz.devices(180).setKelvin(Kelvin)

        end end 
        
end  }
