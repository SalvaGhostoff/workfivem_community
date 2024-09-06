-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

local ids = {
    id = 'Inconnu',
    uid = 'Inconnu'
}

CreateThread(function()
    local player = PlayerId()
    local id = GetPlayerServerId(player)
    local result = lib.callback.await('wf:getUID', source)
    if not result then return end
    ids = {
        id = id,
        uid = result[1].id
    }
end)

GetIDS = function()
    return ids
end

TriggerEvent('chat:addSuggestion', '/id', 'Affiche vos identifiants.', {})
RegisterCommand('id', function()
    ESX.ShowNotification('IDUnique : ' .. ids.id .. '\nUID : ' .. ids.uid)
end, false)

local optionsID = {
    label = 'Prendre l\'ID',
    name = 'wf_core:getID',
    icon = 'fas fa-id-card',
    onSelected = function()
        -- TODO : besoin d'une personne active pour le faire.
    end
}

exports.ox_target:addGlobalPlayer(optionsID)