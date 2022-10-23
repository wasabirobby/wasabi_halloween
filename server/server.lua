-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
local framework = nil

if GetResourceState('es_extended') == 'started' or GetResourceState('es_extended') == 'starting' then
    framework = 'esx'
    ESX = exports['es_extended']:getSharedObject()
elseif GetResourceState('qb-core') == 'started' or GetResourceState('qb-core') == 'starting' then
    framework = 'qb'
    QBCore = exports['qb-core']:GetCoreObject()
else
    print("^0[^1ERROR^0] The framework could not be initialised!^0")
    print("^0[^1ERROR^0] For Support: https://discord.gg/wasabiscripts^0")
end
local houses = {}

if framework == 'esx' then
    ESX.RegisterUsableItem(Config.CandyBasket, function(source)
        TriggerClientEvent('wasabi_halloween:usePumpkin', source)
    end)
else
    QBCore.Functions.CreateUseableItem(Config.CandyBasket, function(source)
        TriggerClientEvent('wasabi_halloween:usePumpkin', source)
    end)
end

RegisterServerEvent('wasabi_halloween:deleteObj')
AddEventHandler('wasabi_halloween:deleteObj', function(netId)
    TriggerClientEvent('wasabi_halloween:deletePumpkin', -1, netId)
end)

getRockstarLicense = function(source)
    local license
    for k,v in pairs(GetPlayerIdentifiers(source)) do
        if string.sub(v, 1, string.len('license:')) == 'license:' then
            license = v
        end
    end
    return license
end

lib.callback.register('wasabi_halloween:getLicense', function(source)
    local license = getRockstarLicense(source)
    return license
end)

lib.callback.register('wasabi_halloween:canKnock', function(source, house)
    if not Config.onePlayerPerHouse then
        if houses[house] then
            return false
        else
            return true
        end
    else
        local license = getRockstarLicense(source)
        if houses?[house]?[license] then 
            return false
        else
            return true
        end
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
    if Config.onePlayerPerHouse then
        if not houses[house] then
            local dist = #(Config.Houses[house] - coords)
            if dist < 5.5 then
                local rTreat = Config.Treats[math.random(1,#Config.Treats)]
                if framework == 'esx' then
                    local xPlayer = ESX.GetPlayerFromId(source)
                    xPlayer.addInventoryItem(rTreat.item, math.random(rTreat.min,rTreat.max))
                else
                    local Player = QBCore.Functions.GetPlayer(source)
                    Player.Functions.AddItem(rTreat.item, math.random(rTreat.min,rTreat.max))
                    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[rTreat.item], "add")
                end
                houses[house] = true
                TriggerClientEvent('wasabi_halloween:removeBlip', -1, house)
            end
        end
    else
        local license = getRockstarLicense(source)
        if not houses[house] then
            houses[house] = {}
        end
        local dist = #(Config.Houses[house] - coords)
        if dist < 5.5 then
            local rTreat = Config.Treats[math.random(1,#Config.Treats)]
            if framework == 'esx' then
                local xPlayer = ESX.GetPlayerFromId(source)
                xPlayer.addInventoryItem(rTreat.item, math.random(rTreat.min,rTreat.max))
            else
                local Player = QBCore.Functions.GetPlayer(source)
                Player.Functions.AddItem(rTreat.item, math.random(rTreat.min,rTreat.max))
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[rTreat.item], "add")
            end
            houses[house][license] = true 
            TriggerClientEvent('wasabi_halloween:removeBlip', source, house)
        end
    end
end)
