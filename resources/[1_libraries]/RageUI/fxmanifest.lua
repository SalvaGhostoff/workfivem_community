---
--- @author Dylan MALANDAIN, Kalyptus
--- @version 1.0.0
--- created at [24/05/2021 10:02]
---

fx_version("cerulean")

games({ "gta5" })

files({
	"src/RMenu.lua",
	"src/menu/RageUI.lua",
	"src/menu/Menu.lua",
	"src/menu/MenuController.lua",
	"src/components/*.lua",
	"src/menu/elements/*.lua",
	"src/menu/items/*.lua",
	"src/menu/panels/*.lua",
	"src/menu/panels/*.lua",
	"src/menu/windows/*.lua",
})

--[[

 HOW TO USE IN OTHER SCRIPTS

 ADD IN FXMANIFEST.LUA :
 
 	client_scripts({
		"@RageUI/src/RMenu.lua",
		"@RageUI/src/menu/RageUI.lua",
		"@RageUI/src/menu/Menu.lua",
		"@RageUI/src/menu/MenuController.lua",
		"@RageUI/src/components/Audio.lua",
		"@RageUI/src/components/Keys.lua",
		"@RageUI/src/components/Rectangle.lua",
		"@RageUI/src/components/Screen.lua",
		"@RageUI/src/components/Sprite.lua",
		"@RageUI/src/components/Text.lua",
		"@RageUI/src/components/Visual.lua",
		"@RageUI/src/menu/elements/ItemsBadge.lua",
		"@RageUI/src/menu/elements/ItemsColour.lua",
		"@RageUI/src/menu/elements/PanelColour.lua",
		"@RageUI/src/menu/items/UIButton.lua",
		"@RageUI/src/menu/items/UICheckBox.lua",
		"@RageUI/src/menu/items/UILine.lua",
		"@RageUI/src/menu/items/UISlider.lua",
		"@RageUI/src/menu/items/UISliderHeritage.lua",
		"@RageUI/src/menu/items/UISliderProgress.lua",
		"@RageUI/src/menu/panels/UIBoutonPanel.lua",
		"@RageUI/src/menu/panels/UIColourPanel.lua",
		"@RageUI/src/menu/panels/UIGridPanel.lua",
		"@RageUI/src/menu/panels/UIGridPanelHorizontal.lua",
		"@RageUI/src/menu/panels/UIGridPanelVertical.lua",
		"@RageUI/src/menu/panels/UIPercentagePanel.lua",
		"@RageUI/src/menu/panels/UIStatisticsPanel.lua",
		"@RageUI/src/menu/windows/UIHeritage.lua",
	})

]]