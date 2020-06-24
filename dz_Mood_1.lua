---------------------------------------------
-- Run only when Mood 1 activates          --
---------------------------------------------
--
-- This is for Mood 1 scene
--

return {
    on = { devices = { 89 } }, -- 89 = Mood 1

    execute = function(domoticz)

         if (domoticz.devices(145).lux >= 40001 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(89).state    == "Off"   then	-- Mood 1  
			   domoticz.devices(55).switchOff()
            end end
			
         if (domoticz.devices(145).lux >= 0) and (domoticz.devices(145).lux <= 40000 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(89).state    == "On"   then	-- Mood 1  

			domoticz.devices(29).dimTo(10)                  -- Storarum: Sido dim
			domoticz.devices(25).switchOff()                -- Storarum: Golv
			domoticz.devices(26).dimTo(40)                  -- Storarum: Tak
			domoticz.devices(45).dimTo(10)                  -- Storarum: LED 
			domoticz.devices(101).dimTo(100)                 -- 
			domoticz.devices(101).setRGB(0, 0, 255)          -- 
			domoticz.devices(102).dimTo(100)                 -- 
			domoticz.devices(102).setRGB(0, 0, 255)          -- 
			domoticz.devices(55).dimTo(100)                 -- Storarum: RGB
			domoticz.devices(55).setRGB(0, 0, 255)          -- Storarum: RGB
			domoticz.devices(53).dimTo(10)                  -- Storarum: Gardin RGB
			domoticz.devices(93).switchOff()                -- Storarum: Gardin LED
            end end
			
end  }
