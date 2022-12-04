-- Resource Metadata
fx_version 'cerulean'
games { 'gta5' }

author 'Kara Webber'
description 'A series of scripts for FiveM.'
version '1.0.0'

shared_script 'config.lua'

client_scripts{
	'client/c-**.lua'
}

server_script 's-discord.lua'
server_export 'sendDiscord'
exports { 
	'sendDiscord'
}

dependencies {
	'vMenu',
	'/onesync'
}