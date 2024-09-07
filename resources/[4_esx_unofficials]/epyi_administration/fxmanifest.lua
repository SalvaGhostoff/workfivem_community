fx_version("cerulean")
game("gta5")
use_experimental_fxv2_oal("yes")
lua54("yes")

name("epyi_administration")
description("A RageUI Administration for ESX Legacy 1.7.5 or newer")
author("Epyi")
version("0.2.1")

shared_scripts({
	"shared/locale.lua",
	"locales/*.lua",

	"@es_extended/imports.lua",
	"config.lua",
})

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
	"@RageUI/src/menu/items/UIList.lua",
	"@RageUI/src/menu/items/UIProgress.lua",
	"@RageUI/src/menu/items/UISeparator.lua",
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

	"client/var_init.lua",
	"client/instructionnal.lua",
	"client/menus_init.lua",
	"client/keys.lua",
	"client/misc.lua",
	"client/threads.lua",
	"client/menus/*.lua",
})

server_scripts({
	"@oxmysql/lib/MySQL.lua",
	"server/misc.lua",
	"server/version_check.lua",
	"server/logs.lua",
	"server/var_init.lua",
	"server/datastore.lua",
	"server/players.lua",
	"server/ban.lua",
	"server/reports.lua",
	"server/spectate.lua",
	"server/favorites_vehicles.lua",
})

dependencies({
	"es_extended",
	"oxmysql",
	"esx_status",
})
