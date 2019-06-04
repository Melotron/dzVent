-----------------------------------
-- Night Light for LED stripe -----
-----------------------------------

	
return {
	on = { devices = { 59, 58, 60, 2 } },

    execute = function(domoticz)
	
	     if domoticz.devices(71).state     == "On"     and                     -- iDetect - Anyone
	        domoticz.devices(2).state      == "On"     and                     --  23 = Virt_SLEEP
	        domoticz.devices(1).state      == "Off"    then                    --  78 = Virt_Morning

            if domoticz.devices(59).state          == "On"     or             -- Pir: Hall
               domoticz.devices(58).state          == "On"     or             -- Pir: Storarum
               domoticz.devices(60).state          == "On"     then           -- Pir: Kök
               domoticz.devices(42).dimTo(40).checkFirst()                                 -- LED in Kitchen
               domoticz.devices(43).dimTo(20).checkFirst()                                 -- LED in Hallway
-- Temp removed			
--               domoticz.devices(54).dimTo(10)                                 -- Lamp Livingroom
--               domoticz.devices(45).setKelvin(40)                             -- Lamp Livingroom
--               print("Motion is: On Turning on Night Light")
	     end end
        	
	     if domoticz.devices(71).state     == "On"     and                     -- iDetect - Anyone
	        domoticz.devices(2).state      == "On"     and                     --  23 = Virt_SLEEP
	        domoticz.devices(1).state      == "Off"    then                    --  78 = Virt_Morning

            if  domoticz.devices(59).state          == "On"     or             -- Pir: Hall
               domoticz.devices(58).state          == "On"     or             -- Pir: Storarum
               domoticz.devices(60).state          == "On"     then           -- Pir: Kök
               domoticz.devices(42).switchOff().afterSec(35)                  -- LED in Kitchen
               domoticz.devices(43).switchOff().afterSec(35)                  -- LED in Hallway
-- Temp removed
--				
--               domoticz.devices(54).switchOff().afterSec(35)                  -- Lamp Livingroom
--               print("Motion is: Off: Turning off Night Light")
	     end end	
end }
