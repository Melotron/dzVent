return { 
	  on = { devices = { 16 } 
       },

    execute = function(domoticz)

        if  domoticz.devices(16).state    == "Off"     then --  Presence detection 
            domoticz.openURL('http://192.168.1.104:7999/1/detection/start')
--            print('CamOn')

        end
		
		
		if  domoticz.devices(16).state    == "On"     then --  Presence detection 
            domoticz.openURL('http://192.168.1.104:7999/1/detection/pause')
--            print('CamOff')
		end end }
