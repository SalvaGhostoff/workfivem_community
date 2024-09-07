fx_version("cerulean")
game("gta5")
use_experimental_fxv2_oal("yes")
lua54("yes")

client_scripts({
	"stream/hud_reticle.gfx",
	"stream/minimap.gfx",
	"client.lua",
})

ui_page("ui.html")

files({
	"ui.html",
})

shared_script("@es_extended/imports.lua")

dependencies({
	"es_extended",
	"esx_status",
})
