author 'Scorpion & xViperAG'
description 'Fitbit for FiveM by Scorpion for qbx_core'
version '1.0.0'

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

client_scripts {
   "@qbx_core/modules/playerdata.lua", 
}

server_scripts {
   'server.lua',
}

shared_scripts {
   '@ox_lib/init.lua',
   "@qbx_core/modules/lib.lua"
}

files {
   'config.lua'
}
