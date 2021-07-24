local isOpen
local testEvent = false

-- Set Lang
i18n.setLang(Config.setLang)

RegisterNUICallback('getWinData', function(data, cb)
	if isOpen then
		isOpen = false
		SetNuiFocus(false, false)
		if data then
			local numbers =  table.concat({data.one, data.two, data.three, data.four, data.five})
			local multiplier = tonumber(data.six)
			local finalResult = numbers * multiplier
			TriggerServerEvent('lotteryTicket:getDataMoney', finalResult)
		end
	end
	cb({})
end)

RegisterNetEvent('lotteryticket:beginNumbers', function()
	if not IsPlayerDead(PlayerId()) then
		if not isOpen then
			isOpen = true
			SendNUIMessage({action = 'beginNumbers'})
			SetNuiFocus(true, true)
		end
	else
		if testEvent then
			TriggerServerEvent('lotteryticket:setMoneyToSource', money) -- Set Money to source (yourself)
		end
	end
end)