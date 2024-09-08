-- WORK FIVEM & LET'S POP !   
-- Il s'agit d'un projet de base FiveM complète et communautaire sur le framework ESX. 
-- L'objectif n'est pas de faire une base ultra complexe avec 150 scripts inédits mais de faire quelque chose de simple, parfaitement fonctionnel et adaptable à son serveur.
-- Copyright (C) 2024 Work FiveM & Let's PoP !

-- Ouvrir le Rockstar Editor
TriggerEvent('chat:addSuggestion', '/rockstareditor', 'Ouvrir le Rockstar Editor', {})
RegisterCommand('rockstareditor', function(source, args, rawCommand)
    NetworkSessionLeaveSinglePlayer() 
    ActivateRockstarEditor() 
end, false)

-- Commencer à enregistrer
TriggerEvent('chat:addSuggestion', '/startrecord', 'Commencer à enregistrer', {})
RegisterCommand('startrecord', function(source, args, rawCommand)
    StartRecording(1) -- Lancer le record
end, false)

-- Arrêter le record et le sauvegarder
TriggerEvent('chat:addSuggestion', '/stoprecord', 'Arrêter le record et le sauvegarder', {})
RegisterCommand('stoprecord', function(source, args, rawCommand)
    StopRecordingAndSaveClip() -- Arrêter le record et le sauvegarder
end, false)

-- Arrêter le record et le supprimer
TriggerEvent('chat:addSuggestion', '/deleterecord', 'Arrêter le record et le supprimer', {})
RegisterCommand('deleterecord', function(source, args, rawCommand)
    StopRecordingAndDiscardClip() -- Arrêter le record et le supprimer
end, false)