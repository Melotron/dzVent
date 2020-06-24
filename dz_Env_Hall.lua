--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Hall
--


return {
    on = { timer   = { "every 1 minutes" },
           devices = { 3, 5, 147, 76 }
           --  3 = Virt_Sleep
           --  5 = Virt_Manuell
           -- 65 = iDetect Anyone
           -- 76 = Edlyn Ljus
       },

    execute = function(domoticz)

         if (domoticz.devices(145).lux         >= 45001 ) then
            if domoticz.devices(147).state     == "On"     and	  -- iDetect - Anyone
               domoticz.devices(3).state       == "Off"    and	  -- Virt_SLEEP  
               domoticz.devices(5).state       == "Off"    then	  -- Virt_Manuell
                   
               domoticz.devices(42).switchOff().checkFirst()      -- Kök: led
               domoticz.devices(43).switchOff().checkFirst()      -- Hall: led
               end end
               
         if  (domoticz.devices(145).lux        >= 28001 ) and (domoticz.devices(145).lux <= 45000 ) then
             if domoticz.devices(147).state    == "On"     and	  -- iDetect - Anyone
                domoticz.devices(3).state      == "Off"    and    -- Virt_SLEEP  
                domoticz.devices(5).state      == "Off"    then	  -- Virt_Manuell
                    
                domoticz.devices(42).switchOff().checkFirst()     -- Kök: led
                domoticz.devices(43).dimTo(60)                    -- Hall: led
                end end

   
         if (domoticz.devices(145).lux         >= 0) and (domoticz.devices(145).lux <= 28000 ) then
            if domoticz.devices(147).state     == "On"     and	  -- 671 = iDetect - Anyone
               domoticz.devices(3).state       == "Off"    and	  --  23 = Virt_SLEEP  
               domoticz.devices(5).state       == "Off"    then	  -- 581 = Virt_Manuell
                   
               domoticz.devices(42).dimTo(100)                    -- Kök: led
               domoticz.devices(43).dimTo(100)                    -- Hall: led

           end end 
           
end }
