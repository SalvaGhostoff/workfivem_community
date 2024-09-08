-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

ConfigClient = {}

ConfigClient.richPresence = {
    enable = true,
    id = '1127598808843436132', -- ID de l'application Discord.
    richPresence = 'UID : %s | ID : %s | Players : %s', -- %s = Placeholder
    asset = 'work_fivem', 
    assetText = 'Work FiveM & Let\'s PoP !',
    assetSmall = '',
    assetSmallText = '',
    actions = {
        {label = 'Discord', url = GetConvar('discord', 'https://discord.gg/VyRPheG6Es')},
        {label = 'Site Web', url = GetConvar('website', 'https://workfivem.lets-pop.fr')},
    },
    wait = 60000 -- Il est recommandé de ne pas augmenter cette valeur.  
}

-- PMA-VOICE
ConfigClient.pmaRange = {
    enable = true,
    showRadius = true,
    sendNotify = false,
    createZoneTimeout = 100,

    ---@param message string
    notify = function(message)
        ESX.ShowNotification(message)
    end,

    ---@param voiceRange number -- La portée de la voix.
    CreateZone = function(voiceRange)
        local coords = GetEntityCoords(PlayerPedId())
        -- orange circle
        DrawMarker(1, coords.x, coords.y, coords.z - 1.0, 0, 0, 2, 0, 0, 0, voiceRange * 2.0, voiceRange * 2.0, 0.5, 255, 140, 0, 100, false, true, 2, nil, nil, false)
    end
}

ConfigClient.AntiBunny = {
    enable = true,
    jumpCount = 3, -- 3 sauts
    jumpDelay = 4000, -- 1 seconde\
    ragdollTime = 6000 -- 6 secondes
}
