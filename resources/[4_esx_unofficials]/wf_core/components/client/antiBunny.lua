-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

local playerPed = PlayerPedId()
local lastJump = 0
local jumpCount = 0

Citizen.CreateThread(function()

    if not ConfigClient.AntiBunny.enable then
        return
    end

    ConsoleLog("info", "Initialisation de l'AntiBunny avec succès.")

    while true do
        if IsControlJustPressed(0, 22) then
            local currentTime = GetGameTimer()
            if currentTime - lastJump < ConfigClient.AntiBunny.jumpDelay then
                jumpCount = jumpCount + 1
            else
                jumpCount = 0
            end
            lastJump = currentTime
            if jumpCount >= ConfigClient.AntiBunny.jumpCount then
                SetPedToRagdoll(playerPed, ConfigClient.AntiBunny.ragdollTime, ConfigClient.AntiBunny.ragdollTime, 0, 0, 0, 0)
                jumpCount = 0
            end
        end
        Wait(0)
    end
end)