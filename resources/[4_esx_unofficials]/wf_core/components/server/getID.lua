-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

lib.callback.register('wf:getUID', function(source)
    local getIdentifier = GetPlayerIdentifiers(source)[1]
    local identifier = string.gsub(getIdentifier, 'license:', '')
    local request = MySQL.query.await('SELECT `id` FROM `users` WHERE `identifier` = ?', {
        identifier
    }) 
    return request
end)