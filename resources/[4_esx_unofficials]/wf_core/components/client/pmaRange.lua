while not ConfigClient do
    Citizen.Wait(0)
end

local voiceModes = {}
local CreateZoneTimeout = ConfigClient.pmaRange.createZoneTimeout
local isCreatingZone = false 

if ConfigClient.pmaRange.enable then
    TriggerEvent("pma-voice:settingsCallback", function(voiceSettings)
        voiceModes = voiceSettings.voiceModes
        ConsoleLog("info", "Les paramètres de la voix ont été chargés avec succès.")
    end)

    AddEventHandler('pma-voice:setTalkingMode', function(mode)
        if ConfigClient.pmaRange.sendNotify then
            ConfigClient.pmaRange.notify("Votre type de voix a été changé en: " .. voiceModes[mode][2] .. ".")
        end
        if ConfigClient.pmaRange.showRadius then
            isCreatingZone = false
            Citizen.Wait(10)
            CreateZoneTimeout = ConfigClient.pmaRange.createZoneTimeout
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
end
