-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
local houses = {}
ESX = exports["es_extended"]:getSharedObject()


ESX.RegisterUsableItem(Config.CandyBasket, function(source)
    TriggerClientEvent('wasabi_halloween:usePumpkin', source)
end)

RegisterServerEvent('wasabi_halloween:deleteObj')
AddEventHandler('wasabi_halloween:deleteObj', function(netId)
    TriggerClientEvent('wasabi_halloween:deletePumpkin', -1, netId)
end)

lib.callback.register('wasabi_halloween:canKnock', function(source, house)
    if houses[house] then
        return false
    else
        return true
    end
end)

lib.callback.register('wasabi_halloween:syncBlips', function(source)
    if #houses < 1 then
        return false
    else
        return houses
    end
end)

RegisterServerEvent('wasabi_halloween:trickOrTreat')
AddEventHandler('wasabi_halloween:trickOrTreat', function(house, coords)
    if not houses[house] then
        local dist = #(Config.Houses[house] - coords)
        if dist < 5.5 then
            local rTreat = Config.Treats[math.random(1,#Config.Treats)]
            local xPlayer = ESX.GetPlayerFromId(source)
            houses[house] = true
            xPlayer.addInventoryItem(rTreat.item, math.random(rTreat.min,rTreat.max))
            TriggerClientEvent('wasabi_halloween:removeBlip', -1, house)
        end
    end
end)
