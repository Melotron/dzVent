---------------------
-- Laddare Magnus
---------------------

return { 
	       on = { devices = { 151, 78 } },     -- Magnus

    execute = function(domoticz)

        if  (domoticz.devices(78).percentage <= 40 )      then    
            if  domoticz.devices(151).state    == "On"     then          --  Presence Magnus 
            domoticz.devices(34).switchOn().checkFirst()                --  Magnus Laddare
            -- print("Charger ON due presence and battery below 30%")
        end end
        
        if  (domoticz.devices(78).percentage >= 87 )      then
             domoticz.devices(34).switchOff()               --  Magnus Laddare
             --print("Charger off, battery over 87%")
        end
        
        if  domoticz.devices(151).state    == "Off"        then           --  Presence Magnus 
            domoticz.devices(34).switchOff()               --  Magnus Laddare
            -- print("Charger off, Magnus left the house")
            
        end 
end }
