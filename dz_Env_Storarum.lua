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
            3, 4, 5, 147, 76, --  3 = Virt_Sleep, 4 = Virt_TV,  5 = Virt_Manuell, 65 = iDetect Anyone, 76 = Edlyn Ljus
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
        local iDetect = dz.devices(147).state == 'On' and dz.devices(3).state == 'Off' and dz.devices(4).state == 'Off' and    dz.devices(5).state == 'Off'

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

        dz.log('Stor_iDetect is ' .. tostring(iDetect),dz.LOG_DEBUG)
        dz.log('Stor_lux is     ' .. tostring(lux),dz.LOG_DEBUG)

        if iDetect then
            if lux >= 25001 then
                switch('Off', nil, 103, 26, 45, 93, 101, 102)
            elseif lux >= 10001 then
                switch('Off', nil, 103, 26, 45, 93, 101, 102 )
                switch('dimTo', 40, 103)
                switch('setKelvin', kelvin, 101, 102, 103)
            elseif lux >= 3001 then
                switch('Off', nil, 103, 26, 45, 93 )
                switch('setKelvin', kelvin, 101, 102, 103, 26, 45 )
                switch('dimTo', 40, 101, 102, 103)
            elseif lux >= 851 then
                switch('dimTo', 40, 45 )
                switch('dimTo', 60, 26 )
                switch('dimTo', 80, 93, 101, 102, 103 )
                switch('setKelvin', kelvin, 101, 102, 103 )
            else
                switch('dimTo', 40, 45 )
                switch('dimTo', 50, 93 )
                switch('dimTo', 60, 26 )
                switch('dimTo', 100, 101, 102, 103 )
                switch('setKelvin', kelvin, 101, 102, 103 )
            end
        end
    end
}
