-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

CreateThread(function()
    local player = PlayerId()
    while true do
        if not ConfigClient.richPresence.enable then return end
        if not ConfigClient.richPresence.id then return print('ID RichPresence manquant.') end
        SetDiscordAppId(ConfigClient.richPresence.id)
        SetDiscordRichPresenceAsset(ConfigClient.richPresence.asset)
        SetDiscordRichPresenceAssetText(ConfigClient.richPresence.assetText)
        SetDiscordRichPresenceAssetSmall(ConfigClient.richPresence.assetSmall)
        SetDiscordRichPresenceAssetSmallText(ConfigClient.richPresence.assetSmallText)
        SetRichPresence(string.format(ConfigClient.richPresence.richPresence, GetPlayerServerId(player)))
        SetDiscordRichPresenceAction(0, "First Button!", "fivem://connect/localhost:30120")
        SetDiscordRichPresenceAction(1, "Second Button!", "fivem://connect/localhost:30120")
        Wait(ConfigClient.richPresence.wait)
    end
end)