-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

ConfigClient = {}

ConfigClient.richPresence = {
    enable = true,
    id = '1127598808843436132',
    richPresence = '🔨 Bob le Bricoleur, ID: %s',
    asset = 'work_fivem', 
    assetText = 'Work FiveM & Let\'s PoP !',
    assetSmall = '',
    assetSmallText = '',
    actions = {
        {label = 'Discord', url = 'https://discord.gg/xxxxxx'},
    }
    wait = 60000 -- Il est recommandé de ne pas augmenter cette valeur.  
}