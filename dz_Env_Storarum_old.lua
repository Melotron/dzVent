--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Storarum
--

return {
    on = { timer   = { "every 1 minutes" },
           devices = { 3, 4, 5, 147, 76 }
           --  3 = Virt_Sleep
           --  5 = Virt_Manuell
           -- 65 = iDetect Anyone
           -- 76 = Edlyn Ljus
       },

    execute = function(domoticz)
    local Kelvin = domoticz.time.matchesRule('at 18:01-07:00') and 80 or 35   -- 75 during nighttime and 40 during day

        if  (domoticz.devices(145).lux >= 25001 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"   and	-- Virt_SLEEP  
               domoticz.devices(4).state    == "Off"   and	-- Virt_TV 
               domoticz.devices(5).state    == "Off"   then	-- Virt_Manuell
            
			domoticz.devices(103).switchOff()                -- Storarum: Golv
			domoticz.devices(26).switchOff()                -- Storarum: Tak
			domoticz.devices(45).switchOff()                -- Storarum: LED 
			domoticz.devices(101).switchOff()               -- Storarum: Hue 1
			domoticz.devices(102).switchOff()               -- Storarum: Hue 2
			domoticz.devices(93).switchOff()                -- Storarum: Gardin LED
            end end

 	    if (domoticz.devices(145).lux >= 10001) and (domoticz.devices(145).lux <= 25000 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"   and	-- Virt_SLEEP  
               domoticz.devices(4).state    == "Off"   and	-- Virt_TV 
               domoticz.devices(5).state    == "Off"   then	-- Virt_Manuell 
                   
			domoticz.devices(103).switchOff()                -- Storarum: Golv
			domoticz.devices(26).switchOff()                -- Storarum: Tak
			domoticz.devices(45).switchOff()                -- Storarum: LED 
	        domoticz.devices(93).switchOff()                -- Storarum: Gardin LED
			domoticz.devices(101).switchOff()               -- Storarum: Hue 1
			domoticz.devices(102).switchOff()               -- Storarum: Hue 2
			domoticz.devices(103).dimTo(40)                  -- Storarum: Golv
			domoticz.devices(101).setKelvin(Kelvin)           -- Storarum: Hue 1
			domoticz.devices(102).setKelvin(Kelvin)           -- Storarum: Hue 2
			domoticz.devices(103).setKelvin(Kelvin)             -- Storarum: Golv
            end end
			
         if (domoticz.devices(145).lux >= 3001) and (domoticz.devices(145).lux <= 10000 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"   and	-- Virt_SLEEP  
               domoticz.devices(4).state    == "Off"   and	-- Virt_TV 
               domoticz.devices(5).state    == "Off"   then -- Virt_Manuell 
            
			domoticz.devices(103).switchOff()                  -- Storarum: Golv
			domoticz.devices(26).switchOff()                -- Storarum: Tak
			domoticz.devices(45).switchOff()                -- Storarum: LED
            domoticz.devices(101).dimTo(40)                 -- Storarum: Hue 1
			domoticz.devices(102).dimTo(40)                 -- Storarum: Hue 2
			domoticz.devices(103).dimTo(40)                  -- Storarum: Golv
			domoticz.devices(101).setKelvin(Kelvin)             -- Storarum: Hue 1
			domoticz.devices(102).setKelvin(Kelvin)             -- Storarum: Hue 2
			domoticz.devices(103).setKelvin(Kelvin)             -- Storarum: Golv
			domoticz.devices(93).switchOff()                -- Storarum: Gardin LED
            end end
			
       if   (domoticz.devices(145).lux >= 851) and (domoticz.devices(145).lux <= 3000) then 
			if domoticz.devices(147).state   == "On"   and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"   and	-- Virt_SLEEP  
               domoticz.devices(4).state    == "Off"   and	-- Virt_TV 
               domoticz.devices(5).state   == "Off"    then	-- Virt_Manuell
            
			domoticz.devices(26).dimTo(60)                  -- Storarum: Tak
			domoticz.devices(45).dimTo(40)                  -- Storarum: LED
			domoticz.devices(101).dimTo(80)                 -- Storarum: Hue 1
			domoticz.devices(102).dimTo(80)                 -- Storarum: Hue 2
			domoticz.devices(103).dimTo(80)                  -- Storarum: Golv
			domoticz.devices(101).setKelvin(Kelvin)             -- Storarum: Hue 1
			domoticz.devices(102).setKelvin(Kelvin)             -- Storarum: Hue 2
			domoticz.devices(103).setKelvin(Kelvin)             -- Storarum: Hue 2
			domoticz.devices(93).dimTo(80)                  -- Storarum: Gardin LED
            end end 
		
       if   (domoticz.devices(145).lux >= 0) and (domoticz.devices(145).lux <= 850) then 
			if domoticz.devices(147).state   == "On"    and	 -- iDetect - Anyone
               domoticz.devices(3).state    == "Off"    and	 -- Virt_SLEEP  
               domoticz.devices(4).state    == "Off"    and	 -- Virt_TV 
               domoticz.devices(5).state    == "Off"    then -- Virt_Manuell
            
			domoticz.devices(26).dimTo(60)                   -- Storarum: Tak
			domoticz.devices(45).dimTo(40)                   -- Storarum: LED
			domoticz.devices(101).dimTo(100)                 -- Storarum: Hue 1
			domoticz.devices(102).dimTo(100)                 -- Storarum: Hue 2
			domoticz.devices(103).dimTo(100)                 -- Storarum: Golv
			domoticz.devices(101).setKelvin(Kelvin)              -- Storarum: Hue 1
			domoticz.devices(102).setKelvin(Kelvin)              -- Storarum: Hue 2
			domoticz.devices(103).setKelvin(Kelvin)              -- Storarum: Hue 3
			domoticz.devices(93).dimTo(50)                   -- Storarum: Gardin LED
        end end 
        

        
end  }
