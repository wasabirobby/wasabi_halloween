-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
ESX = exports["es_extended"]:getSharedObject()


ESX.RegisterUsableItem(Config.PumpkinItem, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('wasabi_halloween:usePumkin', source)
    xPlayer.removeInventoryItem(Config.PumpkinItem, 1)
end)

RegisterServerEvent('wasabi_halloween:deleteObj')
AddEventHandler('wasabi_halloween:deleteObj', function(netId)
    if netId then
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.addInventoryItem(Config.PumpkinItem, 1)
        TriggerClientEvent('wasabi_halloween:deletePumpkin', -1, netId)
    end
end)