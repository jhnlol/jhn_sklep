ESX = exports["es_extended"]:getSharedObject()
ESX.RegisterServerCallback('jhn_sklep:ilosc', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	
	if xPlayer ~= nil then
		local items = xPlayer.getInventoryItem(item)
		
		if items == nil then
			cb(0)
		else
			cb(items.count)
		end
	end
end)

RegisterServerEvent('jhn_sklep:skrzynia')
AddEventHandler('jhn_sklep:skrzynia', function(skrzynia)
	local xPlayer = ESX.GetPlayerFromId(source)
	if (xPlayer) then 
		if (skrzynia == 1) then 
			local items = xPlayer.getInventoryItem('moneta')
			
			if items == nil then
				xPlayer.showNotification('Nie posiadasz tyle coinsow1')
			else
				if (items.count >= 25) then 
					xPlayer.removeInventoryItem('moneta', 25)
					xPlayer.addInventoryItem("chest1", 1)
					xPlayer.showNotification('Pomyslnie kupiles skrzynie legalna')
				else 
					xPlayer.showNotification('Nie posiadasz tyle coinsow')
				end
			end
		elseif (skrzynia == 2) then 
			local items = xPlayer.getInventoryItem('moneta')
			
			if items == nil then
				xPlayer.showNotification('Nie posiadasz tyle coinsow1')
			else
				if (items.count >= 30) then 
					xPlayer.removeInventoryItem('moneta', 30)
					xPlayer.addInventoryItem("chest2", 1)
					xPlayer.showNotification('Pomyslnie kupiles skrzynie crimowa')
				else 
					xPlayer.showNotification('Nie posiadasz tyle coinsow')
				end
			end
		elseif (skrzynia == 3) then 
			local items = xPlayer.getInventoryItem('moneta')
			
			if items == nil then
				xPlayer.showNotification('Nie posiadasz tyle coinsow1')
			else
				if (items.count >= 50) then 
					xPlayer.removeInventoryItem('moneta', 50)
					xPlayer.addInventoryItem("chest3", 1)
					xPlayer.showNotification('Pomyslnie kupiles skrzynie aut')
				else 
					xPlayer.showNotification('Nie posiadasz tyle coinsow')
				end
			end
		elseif (skrzynia == 4) then 
			local items = xPlayer.getInventoryItem('moneta')
			
			if items == nil then
				xPlayer.showNotification('Nie posiadasz tyle coinsow1')
			else
				if (items.count >= 50) then 
					xPlayer.removeInventoryItem('moneta', 50)
					xPlayer.addInventoryItem("chest4", 1)
					xPlayer.showNotification('Pomyslnie kupiles skrzynie diamentowa')
				else 
					xPlayer.showNotification('Nie posiadasz tyle coinsow')
				end
			end
		else
			xPlayer.showNotification('Blad')
		end 
	end
end)