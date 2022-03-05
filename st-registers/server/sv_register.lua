ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local GetCurrentResourceName = GetCurrentResourceName()
local ox_inventory = exports.ox_inventory
local stashes = {
    -- Burgershot trays
	{
		-- Tray 1
		id = 'burgertray1',
		label = 'Burgershot Tray 1',
		slots = 5,
		weight = 5000,
	},
    {
		-- Tray 2
		id = 'burgertray2',
		label = 'Burgershot Tray 2',
		slots = 5,
		weight = 5000,
	},
    {
		-- Tray 3
		id = 'burgertray3',
		label = 'Burgershot Tray 3',
		slots = 5,
		weight = 5000,
	},
    -- Burgershot trays end.
}


AddEventHandler('onServerResourceStart', function(resourceName)
	if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName then
		for i=1, #stashes do
			local stash = stashes[i]
			ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner, stash.jobs)
		end
	end
end)

AddEventHandler('ox:burgertray1', function()
    ox_inventory:openInventory('stash', 'burgertray1')
end)

AddEventHandler('ox:burgertray2', function()
    ox_inventory:openInventory('stash', 'burgertray2')
end)

RegisterNetEvent('ox:burgertray3', function()
    ox_inventory:openInventory('stash', 'burgertray3')
end)

RegisterNetEvent('TakeOrder')
    AddEventHandler('TakeOrder', function(data)
    print('You have added a ' .. data.label .. ' for $' .. data.price .. ' to the Order')
end)

RegisterNetEvent('PayOrder')
AddEventHandler('PayOrder', function(data)
    print('You have Payed for the Order L Nerd')
end)

RegisterNetEvent('ChargedCustomer')
AddEventHandler('ChargedCustomer', function(data)
    print('You have charged the customer')
end)
