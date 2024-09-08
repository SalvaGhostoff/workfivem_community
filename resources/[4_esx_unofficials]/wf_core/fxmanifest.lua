
-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Dop <@472132977195876353>'
description 'This core are made by Dop for the Work FiveM & Let\'s PoP ! project.'
github 'https://github.com/dopyyy'
version '1.0 - 2024'

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
    'ConfigShared.lua',
}

client_script {
    'components/client/*.lua',
    'ConfigClient.lua',
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'components/server/*.lua',
    'ConfigServer.lua',
}

dependencies {
    'ox_lib',
    'wf_core'
}

exports {
    'GetIDS',
}
