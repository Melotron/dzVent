---------------------------------------------
-- Run only when Titta_TV activates          --
---------------------------------------------
--
-- This is for Titta TV scene
--

return {
    on = { devices = { 4, 89 } }, -- 89 = Mood 1

    execute = function(domoticz)
    local Kelvin = domoticz.time.matchesRule('at 18:01-07:00') and 75 or 40   -- 75 during nighttime and 40 during day

         if (domoticz.devices(145).lux >= 10001 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(89).state    == "Off"   then	-- Mood 1  
			   domoticz.devices(55).switchOff()
            end end
			
         if (domoticz.devices(145).lux >= 0) and (domoticz.devices(145).lux <= 10000 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(4).state     == "On"   then	-- Virt TV 

			domoticz.devices(26).switchOff()         -- Storarum: Tak
			domoticz.devices(43).dimTo(30)
			domoticz.devices(45).switchOff()         -- Storarum: LED 
			domoticz.devices(53).dimTo(1)            -- Storarum: Fönster MI
			domoticz.devices(101).dimTo(50)          -- Storarum: Hue 1
			domoticz.devices(102).dimTo(50)          -- Storarum: Hue 2
			domoticz.devices(103).dimTo(50)          -- Storarum: Hue 3
			domoticz.devices(101).setKelvin(Kelvin)  -- Storarum: Hue 1
			domoticz.devices(102).setKelvin(Kelvin)  -- Storarum: Hue 2
			domoticz.devices(103).setKelvin(Kelvin)  -- Storarum: Hue 3
			domoticz.devices(93).switchOff()         -- Storarum: Gardin LED
            end end
			
end  }
