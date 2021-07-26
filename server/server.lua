if Config.useESX then
    ESX = nil

    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end

-- Set Lang
i18n.setLang(Config.setLang)

RegisterNetEvent('lotteryticket:getDataMoney', function(money)
    local source <const> = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = money
    if money < -1  or money > 1000000 then
        xPlayer.giveAccountMoney('money', money)
        sendNotification()
        return
    else
        return print('The id ' .. source .. 'tried triggering event with custom amount')
    end
end)

function sendNotification()
    if Config.useTnotify then

    elseif Config.useESXNotify then
        TriggerClientEvent('esx:showNotification', source)
    elseif Config.useMythicNotify then

    else
        TriggerClientEvent('esx:showNotification', source, )
    end
end