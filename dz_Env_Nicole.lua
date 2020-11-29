--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Nicole
--
return
{
    on =
    { timer = {  'every 1 minutes',  },
        devices = { 2, 88, 147, 149 --  2 = Virt_SLEEP_Nicole 88 = Virt_Manuellt_Nicole 147 = iDetect Anyone 149 = iDetect Nicole
        },  },

    logging =
    { level = domoticz.LOG_DEBUG,
      marker = 'Storarum',  },

    execute = function(dz)

        local kelvin = ( dz.time.matchesRule('at 18:01-07:00') and 80 ) or 35   -- 80 during nighttime and 35 during day
        local lux = dz.devices(145).lux
        local iDetect = dz.devices(147).state == 'On' and dz.devices(88).state == 'Off' and dz.devices(2).state == 'Off'

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

        dz.log('Nicole_iDetect is ' .. tostring(iDetect),dz.LOG_DEBUG)
        dz.log('Nicole_hemmifran is ' .. tostring(hemmifran),dz.LOG_DEBUG)
        dz.log('Nicole_lux is     ' .. tostring(lux),dz.LOG_DEBUG)
--[[
        if iDetect then
            if lux >= 18001 then
                switch('Off', nil, 166, 180)
            elseif lux >= 12001 then
                switch('dimTo', 10, 166, 180)
                switch('setKelvin', kelvin, 166, 180)
            elseif lux >= 1401 then
                switch('dimTo', 10, 166, 180)
                switch('setKelvin', kelvin, 166, 180)
            elseif lux >= 851 then
                switch('dimTo', 10, 166, 180)
                switch('setKelvin', kelvin, 166, 180)
            else
                switch('dimTo', 40, 166, 180 )
                switch('setKelvin', kelvin, 166, 180)
            end
        end
        ]]
    end
}
