-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

ConfigShared = {}

local ServerName = GetConvar("sv_hostname", "Work FiveM & Let's PoP !")

ConsoleLog = function(type, text)
    if type == 'error' then
        print('(' .. ServerName .. ')' .. ' [^1ERROR^7] ' .. text)
    elseif type == 'warning' then
        print('(' .. ServerName .. ')' .. ' [^3WARNING^7] ' .. text)
    elseif type == 'info' then
        print('(' .. ServerName .. ')' .. ' [^5INFO^7] ' .. text)
    end
end