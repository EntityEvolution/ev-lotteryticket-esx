fx_version 'cerulean'

game 'gta5'

lua54 'yes'

description 'Lottery ticket created by Entity Evolution'

version '0.5.0'

--shared_script '@es_extended/imports.lua' -- Remove if using ESX 1.2 (V1 final) or uncomment if using ESX legacy

client_scripts {
    'config/config_cl.lua',
    'client/nui.lua'
}

server_script 'server/server.lua'

ui_page 'html/ui.html'

files {
    'html/ui.html',
    'html/js/*.js',
    'html/css/style.css',
    'html/img/*.png'
}