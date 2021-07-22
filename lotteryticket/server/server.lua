ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('lotteryticket', function(source)
    local referencenumber1 = math.random(0, 10000)
    local a1 = math.random(0, 10000)
    local a2 = math.random(0, 10000)
    local referencenumber2 = math.random(0, 1000)
    local a3 = math.random(0, 1000)
    local a4 = math.random(0, 1000)
    local referencenumber3 = math.random(0, 25)
    local a5 = math.random(0, 25)
    local luck = math.random(0,8)

    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('lotteryticket', 1)

    if a1 == referencenumber1 then
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 1,000,000$!'})
        xPlayer.addAccountMoney('bank', 1000000) 
    elseif a2 == referencenumber1 then
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 50,000$!'})
        xPlayer.addAccountMoney('bank', 50000)  
    elseif a3 == referencenumber2 then
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 10,000$!'})
        xPlayer.addAccountMoney('bank', 10000)   
    elseif a4 == referencenumber2 then
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 5,000$!'})
        xPlayer.addAccountMoney('bank', 5000) 
    elseif a5== referencenumber3 then 
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 150$!'})
        xPlayer.addAccountMoney('bank', 150)
    elseif luck == 1 then
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 2$!'})
        xPlayer.addAccountMoney('bank', 1)  
    elseif luck == 2 then
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 3$!'})
        xPlayer.addAccountMoney('bank', 3)  
    elseif luck == 3 then
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 6$!'})
        xPlayer.addAccountMoney('bank', 6)  
    elseif luck == 4 then
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 12$!'})
        xPlayer.addAccountMoney('bank', 12)
    elseif luck == 5 then 
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 13$! '})
        xPlayer.addAccountMoney('bank', 13)
    elseif luck == 6 then 
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'Has ganado 21$! '})
        xPlayer.addAccountMoney('bank', 21) 
    elseif luck >= 6 then 
        TriggerClientEvent('t-notify:client:Alert', source, {style  =  'error', message  =  'No has ganado nada, suerte para la proxima!'})
    end
    print(luck)
end)
