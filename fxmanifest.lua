fx_version 'cerulean'
game 'gta5'

author 'SirAlpakaLeon'
description 'fivem Doorbell script with ox'
version '1.0 with ox'

shared_scripts {
  '@ox_lib/init.lua',
  '@es_extended/imports.lua',
  'config.lua',
} 

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/server.lua',
}

client_scripts {
  'client/client.lua',
}

dependencies {
	'es_extended',
	'ox_lib'
}