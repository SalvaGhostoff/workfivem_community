local voiceModes = {}
local CreateZoneTimeout = 1000
local isCreatingZone = false 


TriggerEvent("pma-voice:settingsCallback", function(voiceSettings)
    voiceModes = voiceSettings.voiceModes
    print("Type de voix chargé avec succès.")
end)

AddEventHandler('pma-voice:setTalkingMode', function(mode)
    if ConfigClient.pmaRange.sendNotify then
        ConfigClient.pmaRange.notify("Votre type de voix a été changé en: " .. voiceModes[mode][2] .. ".")
    end
    if ConfigClient.pmaRange.showRadius then
        isCreatingZone = false
        Citizen.Wait(10)
        CreateZoneTimeout = 1000 
        isCreatingZone = true

        Citizen.CreateThread(function()
            while CreateZoneTimeout > 0 and isCreatingZone do
                Citizen.Wait(0) 
                CreateZoneTimeout = CreateZoneTimeout - 1 
                ConfigClient.pmaRange.CreateZone(voiceModes[mode][1]) 
            end
            isCreatingZone = false 
        end)
    end
end)
