-------------------------------------------------
-- Starts when alarm goes off on Edlyns phone. --
-------------------------------------------------
--
-- It will dim up the light over the course of 
-- 1 minute and 30 seconds, the switch 76 will
-- reset after 120 seconds. It dims up 1 procent 
-- every 2nd second.
--
-- And after that it will return to my normal
-- enviromental settings that runs every 1 minute.
-- Its listening on device 76 so when it turns
-- off so will the normal enviromental script take
-- over and all is as it should be.
--

return {
	active = true,
	on = { devices = { 76 } },
	
	execute = function(domoticz, device)
	local tak = domoticz.devices(26)       -- Sets the string for tak lampan
	local golv = domoticz.devices(25)      -- Sets the string for golv lampan
	local hall = domoticz.devices(43)      -- Sets the string for hall
	local kok = domoticz.devices(42)       -- Sets the string for kök
		
		
		if  (domoticz.devices(21).lux >= 3701 ) then
	        if domoticz.devices(3).state     == "On"    and	     -- Virt_SLEEP
	           domoticz.devices(76).state    == "On"    then     -- Morgon Ljus Edlyn
			   
			end end 
		
        if (domoticz.devices(21).lux >= 601) and (domoticz.devices(21).lux <= 3700 ) then
	        if domoticz.devices(3).state     == "On"    and	     -- Virt_SLEEP
	           domoticz.devices(76).state    == "On"    then     -- Morgon Ljus Edlyn  
				  
	           domoticz.devices(5).switchOn()     -- Turns on the manual light, so my Env scripts dont change the light.
	           domoticz.devices(3).switchOff()    -- Turns off the Sleep switch.
	           tak.switchOn()
	           tak.dimTo(1)
	           golv.switchOn()
	           golv.dimTo(1)
	           hall.switchOn()
	           hall.dimTo(1)
	           kok.switchOn()
	           kok.dimTo(50)
		    
		        for i = 1,45 do
		            t = i * 2
				        tak.dimTo(i).afterSec(t)
					hall.dimTo(i).afterSec(t)
					kok.dimTo(i).afterSec(t)
				    -- golv.dimTo(i).afterSec(t)
				    -- domoticz.log('WAKE UP LIGHT timer ' ..i)
			end end end 
		    
        if (domoticz.devices(21).lux >= 0) and (domoticz.devices(21).lux <= 600) then
	        if domoticz.devices(3).state     == "On"    and	     -- Virt_SLEEP
	           domoticz.devices(76).state    == "On"    then     -- Morgon Ljus Edlyn  
				  
	           domoticz.devices(5).switchOn()     -- Turns on the manual light, so my Env scripts dont change the light.
	           domoticz.devices(3).switchOff()    -- Turns off the Sleep switch.
		       domoticz.devices(43).dimTo(60)     -- Dim Hall
		       domoticz.devices(42).dimTo(100)    -- Dim Kök
		       tak.switchOn()
		       tak.dimTo(1)
		       golv.switchOn()
		       golv.dimTo(1)
		       hall.switchOn()
		       hall.dimTo(1)
		       kok.switchOn()
		       kok.dimTo(100)
		    
		        for i = 1,65 do
		            t = i * 2
				        tak.dimTo(i).afterSec(t)
					hall.dimTo(i).afterSec(t)
					kok.dimTo(i).afterSec(t)
				    -- golv.dimTo(i).afterSec(t)
				    -- domoticz.log('WAKE UP LIGHT timer ' ..i)
			end end end


        if domoticz.devices(3).state     == "Off"    and	     -- Virt_SLEEP
	       domoticz.devices(76).state    == "Off"    then     -- Morgon Ljus Edlyn  
	           
		   domoticz.devices(5).switchOff()
        -- domoticz.log('Morning light off, returning to normal enviroment ')
	   	end
		
end 
}
