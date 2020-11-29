--------------------------------------------
-- Run enviromental scene every 1 minute   --
---------------------------------------------
--
-- This is for Storarum
--
return
{
    on =
    {
        timer =
        {
            'every 1 minutes',
        },
        devices =
        {
            2, 3, 5, 147, 76 --  3 = Virt_Sleep 5 = Virt_Manuell 65 = iDetect Anyone 76 = Edlyn Ljus
        },
    },

    logging =
    {
        level = domoticz.LOG_DEBUG,
        marker = 'Storarum',
    },

    execute = function(dz)

        local kelvin = ( dz.time.matchesRule('at 18:01-07:00') and 80 ) or 35   -- 80 during nighttime and 35 during day
        local lux = dz.devices(145).lux
        local iDetect = dz.devices(147).state == 'On' and dz.devices(2).state == 'Off' and dz.devices(3).state == 'Off' and    dz.devices(5).state == 'Off'
        local Nicole = dz.devices(147).state == 'On' and dz.devices(2).state == 'On' and dz.devices(3).state == 'Off' and    dz.devices(5).state == 'Off'

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

        dz.log('Hall_iDetect is ' .. tostring(iDetect),dz.LOG_DEBUG)
        dz.log('Hall_Nicole is ' .. tostring(Nicole),dz.LOG_DEBUG)
        dz.log('Hall_lux is     ' .. tostring(lux),dz.LOG_DEBUG)

        if iDetect then
            if lux >= 45001 then
                switch('Off', nil, 42, 43)
            elseif lux >= 28001 then
                switch('Off', nil, 42 )
                switch('dimTo', 60, 43)
                --switch('setKelvin', kelvin, 101, 102, 103)
            else
                switch('dimTo', 100, 42, 43 )
                --switch('setKelvin', kelvin, 101, 102, 103 )
            end
        end

        if Nicole then
            if lux >= 45001 then
                switch('Off', nil, 42, 43)
            elseif lux >= 28001 then
                switch('Off', nil, 42 )
                switch('dimTo', 30, 43)
                --switch('setKelvin', kelvin, 101, 102, 103)
            else
                switch('dimTo', 100, 42 )
                switch('dimTo', 30, 43 )
                --switch('setKelvin', kelvin, 101, 102, 103 )
            end
        end

    end
}
