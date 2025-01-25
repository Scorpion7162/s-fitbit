author 'Scorpion'
description 'Fitbit for FiveM by Scorpion for qbx_core'
version '1.0.0'

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

server_scripts { 
   'server.lua',
}
 client_scripts {
    "@qbx_core/modules/playerdata.lua",
 }

 shared_scripts {
   'config.lua',
   '@ox_lib/init.lua',
   "@qbx_core/modules/lib.lua"
 }
