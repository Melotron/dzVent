return
{
    on =
    {
        timer =
        {
            --'every 1 minutes'
            'at 7:07',
            'at 19:07',
        },
    },

    logging =
    {
        level = domoticz.LOG_ERROR,
        marker = batteryLevels,
    },

    execute = function(dz)

        dz.devices().forEach(function(dv)
            if dv.batteryLevel and dv.batteryLevel < 20 then 
                dz.notify('Lowbatteries','Battery level of ' .. dv.name .. ' is ' .. dv.batteryLevel, dz.PRIORITY_NORMAL,'','',dz.NSS_TELEGRAM) 
            end
        end)
    end
}
