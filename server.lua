--------------------------------
------- Created by Andrie-------
-------------------------------- 

local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Server Event for Buying:
RegisterServerEvent("esx_CityhallShop:BuyItem")
AddEventHandler("esx_CityhallShop:BuyItem", function(amountToBuy,totalBuyPrice,itemName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local itemLabel = ESX.GetItemLabel(itemName)
	if xPlayer.getMoney() >= totalBuyPrice then
		xPlayer.removeMoney(totalBuyPrice)
		xPlayer.addInventoryItem(itemName, amountToBuy)
		TriggerClientEvent("esx:showNotification",source,"You paid ~g~$"..totalBuyPrice.."~s~ for "..amountToBuy.."x ~y~"..itemLabel.."~s~")
	else
		TriggerClientEvent("esx:showNotification",source,"Not enough money")
	end
end)

-- Server Event for Selling:
RegisterServerEvent("esx_CityhallShop:SellItem")
AddEventHandler("esx_CityhallShop:SellItem", function(amountToSell,totalSellPrice,itemName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local itemLabel = ESX.GetItemLabel(itemName)
	if xPlayer.getInventoryItem(itemName).count >= amountToSell then
		xPlayer.addMoney(totalSellPrice)
		xPlayer.removeInventoryItem(itemName, amountToSell)
		TriggerClientEvent("esx:showNotification",source,"You sold "..amountToSell.."x ~y~"..itemLabel.."~s~ for ~g~$"..totalSellPrice.."~s~")
	else
		TriggerClientEvent("esx:showNotification",source,"Not enough items")
	end
end)
