
-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

fx_version 'cerulean'
game 'gta5'

author 'Dop <@472132977195876353>'
description 'This core are made by Dop for the Work FiveM & Let\'s PoP ! project.'
github 'https://github.com/dopyyy'
version '1.0 - 2024'

shared_scripts {
    '@es_extended/imports.lua',
    'Shared.lua',
}

client_script {
    'components/client/*.lua',
    'ConfigClient.lua',
}

server_script {
    'components/server/*.lua',
    'ConfigServer.lua',
}

dependencies {
    'wf_core'
}

