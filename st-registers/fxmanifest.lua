fx_version 'cerulean'
game 'gta5'
lua54        'yes'

author 'Zombiee'
description 'Strp Cash registers'
version '1.0.0'

shared_scripts {
	'@pe-lualib/init.lua'
}

client_scripts {
	'client/*.lua',
}

server_script 'server/*.lua'
