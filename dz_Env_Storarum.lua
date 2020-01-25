--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Storarum
--

return {
    on = { timer   = { "every 1 minutes" },
           devices = { 3, 5, 65, 76 }
           --  3 = Virt_Sleep
           --  5 = Virt_Manuell
           -- 65 = iDetect Anyone
           -- 76 = Edlyn Ljus
       },

    execute = function(domoticz)

       if  (domoticz.devices(21).lux >= 3701 ) then
	if domoticz.devices(65).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"   and	-- Virt_SLEEP  
               domoticz.devices(1).state    == "Off"   and	-- Virt_Morning 
               domoticz.devices(4).state    == "Off"   and	-- Virt_TV 
               domoticz.devices(5).state    == "Off"   then	-- Virt_Manuell
            
            domoticz.devices(29).switchOff().checkFirst()   -- Storarum: Sido dim       
			domoticz.devices(25).switchOff().checkFirst()   -- Storarum: Golv
			domoticz.devices(26).switchOff().checkFirst()   -- Storarum: Tak
			domoticz.devices(45).switchOff().checkFirst()   -- Storarum: LED 
			domoticz.devices(54).switchOff().checkFirst()   -- Storarum: Sido RGBCCT
            end end
			
       if (domoticz.devices(21).lux >= 2001) and (domoticz.devices(21).lux <= 3700 ) then
	if domoticz.devices(65).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"   and	-- Virt_SLEEP  
               domoticz.devices(1).state    == "Off"   and	-- Virt_Morning 
               domoticz.devices(4).state    == "Off"   and	-- Virt_TV 
               domoticz.devices(5).state    == "Off"   then	-- Virt_Manuell 
                   
			domoticz.devices(29).dimTo(40)                  -- Storarum: Sido dim
			domoticz.devices(25).dimTo(35)                  -- Storarum: Golv
			domoticz.devices(26).dimTo(35)                  -- Storarum: Tak
			domoticz.devices(45).dimTo(40)                  -- Storarum: LED 
			domoticz.devices(54).dimTo(40)                  -- Storarum: Sido RGBCCT
			domoticz.devices(54).setKelvin(5000)            -- Storarum: Sido RGBCCT
            end end
			
       if (domoticz.devices(21).lux >= 701) and (domoticz.devices(21).lux <= 2000 ) then
	if domoticz.devices(65).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"   and	-- Virt_SLEEP  
               domoticz.devices(1).state    == "Off"   and	-- Virt_Morning 
               domoticz.devices(4).state    == "Off"   and	-- Virt_TV 
               domoticz.devices(5).state    == "Off"   then -- Virt_Manuell 
            
            domoticz.devices(29).dimTo(60)                  -- Storarum: Sido dim       
			domoticz.devices(25).dimTo(50)                  -- Storarum: Golv
			domoticz.devices(26).dimTo(50)                  -- Storarum: Tak
			domoticz.devices(45).dimTo(40)                  -- Storarum: LED
			domoticz.devices(54).dimTo(60)                  -- Storarum: Sido RGBCCT
			domoticz.devices(54).setKelvin(5000)            -- Storarum: Sido RGBCCT

            end end
			
       if   (domoticz.devices(21).lux >= 401) and (domoticz.devices(21).lux <= 700) then 
	if domoticz.devices(65).state   == "On"    and	-- iDetect - Anyone
               domoticz.devices(3).state    == "Off"   and	-- Virt_SLEEP  
               domoticz.devices(1).state    == "Off"   and	-- Virt_Morning 
               domoticz.devices(4).state    == "Off"   and	-- Virt_TV 
               domoticz.devices(5).state   == "Off"    then	-- Virt_Manuell
            
            domoticz.devices(29).dimTo(80)                  -- Storarum: Sido dim       
			domoticz.devices(25).dimTo(66)                  -- Storarum: Golv
			domoticz.devices(26).dimTo(66)                  -- Storarum: Tak
			domoticz.devices(45).dimTo(40)                  -- Storarum: LED
			domoticz.devices(54).dimTo(80)                  -- Storarum: Sido RGBCCT
			domoticz.devices(54).setKelvin(5000)            -- Storarum: Sido RGBCCT
            end end 
		
       if   (domoticz.devices(21).lux >= 0) and (domoticz.devices(21).lux <= 400) then 
	if domoticz.devices(65).state   == "On"     and	 -- iDetect - Anyone
               domoticz.devices(3).state    == "Off"    and	 -- Virt_SLEEP  
               domoticz.devices(1).state    == "Off"    and	 -- Virt_Morning 
               domoticz.devices(4).state    == "Off"    and	 -- Virt_TV 
               domoticz.devices(5).state    == "Off"    then -- Virt_Manuell
            
            domoticz.devices(29).dimTo(100)                 -- Storarum: Sido dim       
			domoticz.devices(25).dimTo(80)                  -- Storarum: Golv
			domoticz.devices(26).dimTo(80)                  -- Storarum: Tak
			domoticz.devices(45).dimTo(40)                  -- Storarum: LED
			domoticz.devices(54).dimTo(100)                 -- Storarum: Sido RGBCCT
			domoticz.devices(54).setKelvin(5000)            -- Storarum: Sido RGBCCT
            end end 
end  }
