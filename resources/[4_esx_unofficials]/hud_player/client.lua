local notifyCooldown = {
	food = false,
	thirst = false,
}
local cooldownTime = 60 * 1000
local isShowed = true

local showNotification = function(msg, type, time)
	if GetResourceState("okokNotify") == "started" then
		if type == "error" then
			exports["okokNotify"]:Alert("Error", msg, time, "error")
		elseif type == "info" then
			exports["okokNotify"]:Alert("Info", msg, time, "info")
		elseif type == "success" then
			exports["okokNotify"]:Alert("Success", msg, time, "success")
		elseif type == "warning" then
			exports["okokNotify"]:Alert("Warning", msg, time, "warning")
		else
			exports["okokNotify"]:Alert("Info", msg, time, "info")
		end
	else
		ESX.ShowNotification(msg, type == "warning" and "info" or type, time)
	end
end

local function timecycleEffect()
	Citizen.CreateThread(function()
		SetTimecycleModifier("phone_cam3")
		SetTimecycleModifierStrength(0.0)
		TriggerScreenblurFadeIn(500)
		local strengh = 0.0
		repeat
			SetTimecycleModifierStrength(strengh)
			strengh = strengh + ((1 - strengh) / 10)
			Citizen.Wait(1)
		until strengh >= 0.8
		Citizen.Wait(500)
		TriggerScreenblurFadeOut(500)
		repeat
			SetTimecycleModifierStrength(strengh)
			strengh = strengh - ((1 - strengh) / 10)
			Citizen.Wait(1)
		until strengh <= 0.0
	end)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(200)
		local ped = PlayerPedId()
		local health = GetEntityHealth(ped)
		local armor = GetPedArmour(ped)
		local food = nil
		local thirst = nil
		local showed = false

		TriggerEvent("esx_status:getStatus", "hunger", function(status)
			food = status.val / 10000
		end)

		TriggerEvent("esx_status:getStatus", "thirst", function(status)
			thirst = status.val / 10000
		end)

		if thirst ~= nil and food ~= nil then
			showed = true
			if food < 15 and not notifyCooldown.food then
				notifyCooldown.food = true
				timecycleEffect()
				showNotification("Vous avez faim !", "warning", 5000)
				Citizen.SetTimeout(cooldownTime, function()
					notifyCooldown.food = false
				end)
			end
			if thirst < 15 and not notifyCooldown.thirst then
				notifyCooldown.thirst = true
				timecycleEffect()
				showNotification("Vous avez soif !", "warning", 5000)
				Citizen.SetTimeout(cooldownTime, function()
					notifyCooldown.thirst = false
				end)
			end
		else
			thirst, food = 0, 0
		end

		SendNUIMessage({
			showed = showed and isShowed,
			stats = true,
			heal = health,
			armor = armor,
			thirst = thirst,
			food = food,
		})
	end
end)

exports("showHud", function(show)
	isShowed = show
end)
