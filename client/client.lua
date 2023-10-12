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
    print("^0[^1ERROR^0] Check the Server console for infos!^0")
end

local pEquip, pObj, isBusy
local blips = {}

CreateThread(function()
    while true do
        local sleep = 1500
        if isBusy then
            sleep = 0
            lib.disableControls()
        end
        Wait(sleep)
    end
end)

if framework == 'esx' then
    RegisterNetEvent('esx:playerLoaded')
    AddEventHandler('esx:playerLoaded', function(xPlayer)
        if Config.TrickOrTreat then
            if Config.onePlayerPerHouse then
                local houses = lib.callback.await('wasabi_halloween:syncBlips', 500)
                if houses then
                    for k,v in pairs(houses) do
                        RemoveBlip(blips[k])
                    end
                end
            else
                local houses = lib.callback.await('wasabi_halloween:syncBlips', 500)
                if houses then
                    local license = lib.callback.await('wasabi_halloween:getLicense', 500)
                    for k,v in pairs(houses) do
                        if v[license] then
                            RemoveBlip(blips[k])
                        end
                    end
                end
            end
        end
    end)
else
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function(_)
        if Config.TrickOrTreat then
            if Config.onePlayerPerHouse then
                local houses = lib.callback.await('wasabi_halloween:syncBlips', 500)
                if houses then
                    for k,v in pairs(houses) do
                        RemoveBlip(blips[k])
                    end
                end
            else
                local houses = lib.callback.await('wasabi_halloween:syncBlips', 500)
                if houses then
                    local license = lib.callback.await('wasabi_halloween:getLicense', 500)
                    for k,v in pairs(houses) do
                        if v[license] then
                            RemoveBlip(blips[k])
                        end
                    end
                end
            end
        end
    end)
end

randomPed = function()
    return Config.Peds[math.random(1,#Config.Peds)]
end

trickOrTreat = function(house)
	if Config.onlyAtNight then
		local hours = GetClockHours()
		if not (hours >= 18) then
            lib.notify({
                title = Strings.only_at_night,
                description = Strings.only_at_night_desc,
                duration = 3500,
                type = 'error'
            })
            isBusy = false
            return	
        end
	end
    if Config.RequireCandyBasket and not pEquip then
        lib.notify({
            title = Strings.need_candy_basket,
            description = Strings.need_candy_basket_desc,
            duration = 3500,
            type = 'error'
        })
        isBusy = false
        return
    end
    local canKnock = lib.callback.await('wasabi_halloween:canKnock', 500, house)
    if canKnock then
        local plyPed = cache.ped
        lib.requestAnimDict('timetable@jimmy@doorknock@', 3000)
        TaskPlayAnim(plyPed, 'timetable@jimmy@doorknock@', 'knockdoor_idle', 8.0, 8.0, -1, 3, 0, false, false, false)
        Wait(3000)
        local randPed = randomPed()
        lib.requestModel(randPed, 3000)
        lib.requestAnimDict('mp_common', 3000)
        ClearPedTasks(plyPed)
        local coords = GetOffsetFromEntityInWorldCoords(plyPed, 0.2, 0.0, 0.0)
        local heading = GetEntityHeading(plyPed)
        local ped = CreatePed(28, randPed, coords.x+0.1, coords.y, coords.z-0.9, heading*2, false, false)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        ClearPedTasks(ped)
        TaskTurnPedToFaceCoord(ped, coords.x, coords.y, coords.z, 3000)
        TaskPlayAnim(ped,"mp_common","givetake1_a", 8.0, 0.0, -1, 1, 0, false, false, false)
        Wait(2000)
        ClearPedTasks(ped)
        Wait(1000)
        DeletePed(ped)
        RemoveAnimDict('timetable@jimmy@doorknock@')
        RemoveAnimDict('mp_common')
        SetModelAsNoLongerNeeded(randPed)
        TriggerServerEvent('wasabi_halloween:trickOrTreat', house, GetEntityCoords(plyPed))
        isBusy = false
    else
        lib.notify({
            title = Strings.out_of_treats,
            description = Strings.out_of_treats_desc,
            duration = 3500,
            type = 'error'
        })
        isBusy = false
    end
end

CreateBlip = function(coords, sprite, colour, text, scale)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, colour)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, scale)
	AddTextEntry(text, text)
	BeginTextCommandSetBlipName(text)
	EndTextCommandSetBlipName(blip)
    return blip
end


if Config.TrickOrTreat then
    CreateThread(function()
        for k,v in pairs(Config.Houses) do
            blips[k] = CreateBlip(v, 40, 81, Strings.blip_string, 0.65)
        end
    end)

    CreateThread(function()
        local textUI = {}
        while true do
            local sleep = 1500
            local ped = cache.ped
            local coords = GetEntityCoords(ped)
            for k,v in pairs(Config.Houses) do
                local dist = #(coords - v)
                if dist <= 1.25 then
                    if not textUI[k] then
                        lib.showTextUI(Strings.trick_or_treat)
                        textUI[k] = true
                    end
                    sleep = 0
                    if IsControlJustReleased(0, 38) and not isBusy then
                        isBusy = true
                        trickOrTreat(k)
                    elseif IsControlJustReleased(0, 38) then
                        lib.notify({
                            title = Strings.busy,
                            description = Strings.busy_desc,
                            duration = 3500,
                            type = 'error'
                        })
                    end
                elseif dist >= 1.26 then
                    if textUI[k] then
                        lib.hideTextUI()
                        textUI[k] = false
                    end
                end
            end
            Wait(sleep)
        end
    end)
end

RegisterNetEvent('wasabi_halloween:usePumpkin', function()
    if not pEquip then
        local ped = cache.ped
        lib.requestModel(`jsd_prop_pumpkin`, 100)
        local hash = `jsd_prop_pumpkin`
        local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(ped,0.0,3.0,0.5))
        pObj = CreateObjectNoOffset(hash, x, y, z, true, false, false)
        SetModelAsNoLongerNeeded(hash)
        SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, false)
        AttachEntityToEntity(pObj, ped, GetPedBoneIndex(ped, 57005), 0.4, -0.02, 0.09, 28.79, -79.4, -95.07, true, true, false, true, 1, true)
        pEquip = true
        lib.notify({
            title = Strings.basket_equipped,
            description = Strings.basket_equipped_desc,
            duration = 3500,
            type = 'success'
        })
    else
        deletePumpkin(pObj)
        pEquip = nil
        pObj = nil
        lib.notify({
            title = Strings.basket_removed,
            description = Strings.basket_removed_desc,
            duration = 3500,
            type = 'error'
        })
    end
end)

deletePumpkin = function(obj)
    TriggerServerEvent("wasabi_halloween:deleteObj", ObjToNet(obj))
end


RegisterNetEvent('wasabi_halloween:deletePumpkin', function(netObj)
    if DoesEntityExist(NetToObj(netObj)) then
        DeleteObject(NetToObj(netObj))
    end
end)

RegisterNetEvent('wasabi_halloween:removeBlip', function(id)
    RemoveBlip(blips[id])
end)
