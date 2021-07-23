local isOpen

-- Set Lang
i18n.setLang(Config.setLang)

RegisterNUICallback('getWinData', function(data, cb)
	if isOpen then
		local numbers =  table.concat({data.one, data.two, data.three, data.four, data.five})
		local multiplier = tonumber(data.six)
		local finalResult = numbers * multiplier
		if data then
			TriggerServerEvent('lotteryTicket:getDataMoney', finalResult)
		end
	end
	cb({})
end)