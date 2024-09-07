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
	"@RageUI/src/components/*.lua",
	"@RageUI/src/menu/elements/*.lua",
	"@RageUI/src/menu/items/*.lua",
	"@RageUI/src/menu/panels/*.lua",
	"@RageUI/src/menu/panels/*.lua",
	"@RageUI/src/menu/windows/*.lua",

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
