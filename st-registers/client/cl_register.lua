ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local ox_inventory = exports.ox_inventory

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)

Citizen.CreateThread(function()
    RegisterNetEvent("st-registers:Tray1")
    AddEventHandler("st-registers:Tray1", function()
        ox_inventory:openInventory('stash', 'burgertray1')
        print('Opened tray 1')
    end)

    RegisterNetEvent("st-registers:Tray2")
    AddEventHandler("st-registers:Tray2", function()
        ox_inventory:openInventory('stash', 'burgertray2')
        print('Opened tray 2')
    end)

    RegisterNetEvent("st-registers:Tray3")
    AddEventHandler("st-registers:Tray3", function()
        ox_inventory:openInventory('stash', 'burgertray3')
        print('Opened tray 3')
    end)
end)

