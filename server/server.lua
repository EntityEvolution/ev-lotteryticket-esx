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
        print('The id ' .. source .. 'tried triggering event with custom amount')
    end
end)

RegisterNetEvent('lotteryticket:setMoneyToSource', function(fakeMoney)
    local source <const> = source
    if Config.kickPlayer then
        DropPlayer(source, Config.kickMessage)
    else

    end
end)