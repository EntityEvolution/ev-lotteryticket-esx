-- Set Lang
i18n.setLang(Config.setLang)

RegisterNetEvent('lotteryticket:getDataMoney', function(money)
    local source <const> = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = money

    if money < -1  or money > 1000000 then
        xPlayer.setMoney(money)
        return
    else
        print('The id ' .. source .. 'tried triggering event with custom amount')
    end
end)
