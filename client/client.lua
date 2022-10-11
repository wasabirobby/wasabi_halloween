-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
ESX = exports["es_extended"]:getSharedObject()


RegisterNetEvent('wasabi_halloween:usePumkin', function()
    local ped = cache.ped
    lib.requestModel(`jsd_prop_pumpkin`, 100)
    local hash = `jsd_prop_pumpkin`
    local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(ped,0.0,3.0,0.5))
    local obj = CreateObjectNoOffset(hash, x, y, z, true, false)
    SetModelAsNoLongerNeeded(hash)
    SetCurrentPedWeapon(ped, `WEAPON_UNARMED`)
    AttachEntityToEntity(obj, ped, GetPedBoneIndex(ped, 57005), 0.4, -0.02, 0.09, 28.79, -79.4, -95.07, true, true, false, true, 1, true)
    hasPumkin(obj)
end)

deletePumkin = function(obj)
    TriggerServerEvent("wasabi_halloween:deleteObj", ObjToNet(obj))
end


hasPumkin = function(obj)
    local equipped, textUI = true, false
    CreateThread(function()
        while equipped do
            Wait(0)
            if not textUI then
                lib.showTextUI(Config.String)
                textUI = true
            end
            if IsControlJustReleased(0, 38) then
                equipped = false
                lib.hideTextUI()
                textUI = false
                deletePumkin(obj)
            end
        end
    end)
end


RegisterNetEvent('wasabi_halloween:deletePumpkin', function(netObj)
    if DoesEntityExist(NetToObj(netObj)) then
        DeleteObject(NetToObj(netObj))
    end
end)