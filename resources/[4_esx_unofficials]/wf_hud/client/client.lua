-- All rights reserved 2024, @Dopmaine or @Shane
-- All files are confidential and may not be redistributed without the author's permission.

-- getHDisplay
local notifyCooldown = {
    food = false,
    thirst = false,
}
local cooldownTime = 60 * 1000
getHDisplay = GetResourceKvpString("hud_display") or "visible"

Wait(1000)

local timecycleEffect = function()
    Citizen.CreateThread(function()
        SetTimecycleModifier("phone_cam3")
        SetTimecycleModifierStrength(0.0)
        TriggerScreenblurFadeIn(500)
        local strengh = 0.0
        repeat
            SetTimecycleModifierStrength(strengh)
            strengh = strengh + ((1 - strengh) / 10)
            Citizen.Wait(1)
        until strengh >= 0.8
        Citizen.Wait(500)
        TriggerScreenblurFadeOut(500)
        repeat
            SetTimecycleModifierStrength(strengh)
            strengh = strengh - ((1 - strengh) / 10)
            Citizen.Wait(1)
        until strengh <= 0.0
    end)
end

-- setHDisplay (affiche ou masque l'affichage)
local setHDisplay = function(value)
    SendNUIMessage({
        type = (value or getHDisplay)
    })

    if Config.controlminimap then
        if  (value or getHDisplay) == "visible" then
            DisplayRadar(true)
        else
            DisplayRadar(false)
        end
    end

    if value then
        getHDisplay = value
        SetResourceKvp("hud_display", value)
        return
    end
end

setHDisplay(getHDisplay)

-- Retourne l'état actuel de l'affichage
local getActualDisplay = function()
    return getHDisplay
end


local values = {}
local ped = PlayerPedId()
-- Update l'état de l'affichage
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local health = math.floor(GetEntityHealth(ped) - 100)
        local armor = math.floor(GetPedArmour(ped))
        SendNUIMessage({
            health = health,
            armor = armor,
        })
    end
end)

AddEventHandler("esx_status:onTick", function(data)
    local hunger, thirst
    for i = 1, #data do
        if data[i].name == "thirst" then
            thirst = math.floor(data[i].percent)
        end
        if data[i].name == "hunger" then
            hunger = math.floor(data[i].percent)
        end
    end

    values.drinkBar = math.floor(thirst)
    values.foodBar = math.floor(hunger) 
    
    if values.foodBar < 15 and not notifyCooldown.food then
        notifyCooldown.food = true
        timecycleEffect()
        ESX.ShowNotification("Vous avez faim !")
        Citizen.SetTimeout(cooldownTime, function()
            notifyCooldown.food = false
        end)
    end
    if values.drinkBar < 15 and not notifyCooldown.thirst then
        notifyCooldown.thirst = true
        timecycleEffect()
        ESX.ShowNotification("Vous avez soif !")
        Citizen.SetTimeout(cooldownTime, function()
            notifyCooldown.thirst = false
        end)
    end


    SendNUIMessage({
        hunger = values.foodBar,
        thirst = values.drinkBar,
    })
end)

-- Sauvegarde l'état de l'affichage lors de l'arrêt de la ressource
AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
        SetResourceKvp("hud_display", getHDisplay)
    end
end)

RegisterCommand(Config.command, function()
    if getHDisplay == "visible" then
        setHDisplay("invisible")
    else
        setHDisplay("visible")
    end
end, false)
