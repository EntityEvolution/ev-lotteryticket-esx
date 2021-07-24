function sendNotification()
    if Config.useTnotify then

    elseif Config.useESXNotify then
        TriggerClientEvent('esx:showNotification', source)
    elseif Config.useMythicNotify then

    else
        TriggerClientEvent('esx:showNotification', source, )
    end
end

function sendDiscord(webhook)

end