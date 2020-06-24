---------------------------------------------
-- Run only when Mood 2 activates          --
---------------------------------------------
--
-- This is for Mood 2 scene
--

return {
    on = { devices = { 90 } }, -- 90 = Mood 2

    execute = function(domoticz)

         if (domoticz.devices(145).lux >= 40001 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(90).state    == "Off"   then	-- Mood 2  
			   domoticz.devices(55).switchOff().checkFirst()
            end end
			
         if (domoticz.devices(145).lux >= 0) and (domoticz.devices(145).lux <= 40000 ) then
			if domoticz.devices(147).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(90).state    == "On"   then	-- Mood 2  
                   
			domoticz.devices(29).dimTo(20)                  -- Storarum: Sido dim
			domoticz.devices(25).dimTo(40)                  -- Storarum: Golv
			domoticz.devices(26).dimTo(40)                  -- Storarum: Tak
			domoticz.devices(45).dimTo(10)                  -- Storarum: LED 
			domoticz.devices(54).dimTo(100)                 -- Storarum: Sido RGBCCT
			domoticz.devices(54).setRGB(0, 0, 255)          -- Storarum: Sido RGBCCT
			domoticz.devices(55).dimTo(100)                 -- Storarum: RGB
			domoticz.devices(55).setDiscoMode(1)            -- Storarum: RGB
			domoticz.devices(53).dimTo(10)
			domoticz.devices(93).switchOff()                -- Storarum: Gardin LED
            end end
			
end  }
