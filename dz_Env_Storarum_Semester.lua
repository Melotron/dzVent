--------------------------
-- When on vacation     --
--------------------------

return {
    on = { devices = { 62, 3 } 
         },

    execute = function(domoticz)

        if  (domoticz.devices(21).lux >= 3701 ) then
            if domoticz.devices(62).state   == "On"     and        -- Virt_Semester
               domoticz.devices(63).state   == "On"     and        -- Virt_Semester_Sova
               domoticz.devices(71).state   == "Off"    then       -- iDetect - Anyone
               domoticz.devices(29).switchOff().checkFirst()       -- Storarum: Sido
               domoticz.devices(25).switchOff().checkFirst()       -- Storarum: Golv
               domoticz.devices(26).switchOff().checkFirst()       -- Storarum: Tak
               domoticz.devices(44).switchOff().checkFirst()       -- Storarum: TV MI
               domoticz.devices(54).switchOff().checkFirst()       -- Storarum: Sido RGBCCT
               -- print("Lux mode :Day")
               end end

        if (domoticz.devices(21).lux >= 601) and (domoticz.devices(21).lux <= 3700 ) then
            if domoticz.devices(63).state   == "On"     and        -- Virt_Semester_Sova
               domoticz.devices(62).state   == "On"     and        -- Virt_Semester
               domoticz.devices(71).state   == "Off"    then       -- iDetect - Anyone
               domoticz.devices(29).switchOff().checkFirst()       -- Storarum: Sido
               domoticz.devices(25).dimTo(35)                      -- Storarum: Golv
               domoticz.devices(26).dimTo(35)                      -- Storarum: Tak
               domoticz.devices(44).switchOff().checkFirst()       -- Storarum: TV MI
               domoticz.devices(54).dimTo(50)                      -- Storarum: Sido RGBCCT
               domoticz.devices(54).setKelvin(5000)                -- Storarum: Sido RGBCCT
               -- print("Lux mode :Dusk")
               end end
		
        if   (domoticz.devices(21).lux >= 0) and (domoticz.devices(21).lux <= 600) then 
            if domoticz.devices(62).state   == "On"     and        -- Virt_Semester
               domoticz.devices(63).state   == "On"     and        -- Virt_Semester_Sova
               domoticz.devices(71).state   == "Off"    then       -- iDetect - Anyone
               domoticz.devices(29).switchOff().checkFirst()       -- Storarum: Sido
               domoticz.devices(25).dimTo(65)                      -- Storarum: Golv
               domoticz.devices(26).dimTo(50)                      -- Storarum: Tak
               domoticz.devices(44).switchOff().checkFirst()       -- Storarum: TV MI
               domoticz.devices(54).dimTo(50)                      -- Storarum: Sido RGBCCT
               domoticz.devices(54).setKelvin(5000)                -- Storarum: Sido RGBCCT
               -- print("Lux mode :Dark")
               end end 
end  }
