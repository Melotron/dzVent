--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Sovrum
--
return
{
    on =
    { timer = {  'every 1 minutes',  },
        devices = { 2, 3, 5, 147, 76 --  3 = Virt_Sleep 5 = Virt_Manuell 65 = iDetect Anyone 76 = Edlyn Ljus
        },  },

    logging =
    { level = domoticz.LOG_DEBUG,
      marker = 'Storarum',  },

    execute = function(dz)

        local kelvin = ( dz.time.matchesRule('at 18:01-07:00') and 80 ) or 35   -- 80 during nighttime and 35 during day
        local lux = dz.devices(145).lux
        local iDetect = dz.devices(147).state == 'On' and dz.devices(86).state == 'Off' and dz.devices(87).state == 'Off'
        local hemmifran = dz.devices(150).state == 'On' and dz.devices(151).state == 'On'

        local function switch(action, value, ... )
            for _,id in ipairs({...}) do
                dv = dz.devices(id)
                if action == 'Off' then
                    dv.switchOff()
                elseif action == 'On' then
                    dv.switchOn()
                elseif action == 'setKelvin' then
                    dv.setKelvin(value)
                elseif action == 'dimTo' then
                    dv.dimTo(value)
                end
            end
        end

        dz.log('iDetect is ' .. tostring(iDetect),dz.LOG_DEBUG)
        dz.log('hemmifran is ' .. tostring(hemmifran),dz.LOG_DEBUG)
        dz.log('lux is     ' .. tostring(lux),dz.LOG_DEBUG)

        if hemifran then
            switch('Off', nil, 42, 43)
        end

        if iDetect then
            if lux >= 3001 then
                switch('Off', nil, 166, 180)
            elseif lux >= 1001 then
                switch('dimTo', 10, 166, 180)
                switch('setKelvin', kelvin, 166, 180)
            else
                switch('dimTo', 40, 166, 180 )
                switch('setKelvin', kelvin, 166, 180)
            end
        end
    end
}
