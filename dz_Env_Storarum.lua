--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
return {
    on = { timer   = { "every 1 minutes" },
           devices = { 3, 5, 71, 76 }
           --  3 = Virt_Sleep
           --  5 = Virt_Manuell
           -- 71 = iDetect Anyone
           -- 76 = Edlyn Ljus
       },

    execute = function(domoticz)

        if  (domoticz.devices(21).lux >= 3701 ) then
            if domoticz.devices(71).state   == "On"     and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"    and	-- Virt_SLEEP  
               domoticz.devices(1).state    == "Off"    and	-- Virt_Morning 
               domoticz.devices(4).state    == "Off"    and	-- Virt_TV 
               domoticz.devices(5).state   == "Off"    then	-- Virt_Manuell
                   
               domoticz.devices(29).switchOff()                -- Storarum: Sido
               domoticz.devices(25).switchOff()                -- Storarum: Golv
               domoticz.devices(26).switchOff()                -- Storarum: Tak
               domoticz.devices(44).switchOff()                -- Storarum: TV MI
               domoticz.devices(54).switchOff()                -- Storarum: Sido RGBCCT
               -- print("Lux mode :Day") -- Left from debug
        end end

        if (domoticz.devices(21).lux >= 601) and (domoticz.devices(21).lux <= 3700 ) then
            if domoticz.devices(71).state   == "On"     and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"    and	-- Virt_SLEEP  
               domoticz.devices(1).state    == "Off"    and	-- Virt_Morning 
               domoticz.devices(4).state    == "Off"    and	-- Virt_TV 
               domoticz.devices(5).state   == "Off"    then	-- Virt_Manuell 
                   
               domoticz.devices(29).switchOff().checkFirst()   -- Storarum: Sido
               domoticz.devices(25).dimTo(35)                  -- Storarum: Golv
               domoticz.devices(26).dimTo(35)                  -- Storarum: Tak
               domoticz.devices(44).switchOff().checkFirst()   -- Storarum: TV MI
               domoticz.devices(54).dimTo(50)                  -- Storarum: Sido RGBCCT
               domoticz.devices(54).setKelvin(5000)            -- Storarum: Sido RGBCCT
               -- print("Lux mode :Dusk") -- Left from debug
        end end
		
        if   (domoticz.devices(21).lux >= 0) and (domoticz.devices(21).lux <= 600) then 
            if domoticz.devices(71).state   == "On"     and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"    and	-- Virt_SLEEP  
               domoticz.devices(1).state    == "Off"    and	-- Virt_Morning 
               domoticz.devices(4).state    == "Off"    and	-- Virt_TV 
               domoticz.devices(5).state   == "Off"    then	-- Virt_Manuell
                   
               domoticz.devices(29).switchOff().checkFirst()   -- Storarum: Sido
               domoticz.devices(25).dimTo(65)                  -- Storarum: Golv
               domoticz.devices(26).dimTo(50)                  -- Storarum: Tak
               domoticz.devices(44).switchOff().checkFirst()   -- Storarum: TV MI
               domoticz.devices(54).dimTo(50)                  -- Storarum: Sido RGBCCT
               domoticz.devices(54).setKelvin(5000)            -- Storarum: Sido RGBCCT
               -- print("Lux mode :Dark")   -- Left from debug
        end end 
end  }
