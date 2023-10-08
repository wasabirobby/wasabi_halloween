-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description "Wasabi's ESX/QBCore Halloween Script"

author 'wasabirobby#5110'

version '1.0.8'

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

dependencies {
	'ox_lib'
}

data_file 'DLC_ITYP_REQUEST' 'stream/jsd_prop_pumpkin.ytyp'
