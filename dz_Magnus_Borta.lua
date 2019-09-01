----------------------------
-- Set scene Borta Magnus --
----------------------------

return { 
	       on = { devices = { 73 } },     -- Presence detection

    execute = function(domoticz)

        if  domoticz.devices(73).state    == "Off"     then --  Presence detection Magnus
            
--          Laddare
            domoticz.devices(34).switchOff().checkFirst()    --  Laddare i Sovrum

--          Virtual Switches
            domoticz.devices(77).switchOff().checkFirst()   --  Magnus Morgon ljus

            -- print("Bye Bye Magnus")
        end 
    
        if  domoticz.devices(73).state    == "On"     then --  Presence detection Magnus
            
--          Laddare
            domoticz.devices(34).switchOn                  --  Laddare i Sovrum

        end 




end }
