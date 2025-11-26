-- FX Information
fx_version 'cerulean'
lua54 'yes'
game 'gta5'

-- Resource Information
name 'rc_washhands'
author 'SensiCode99'
version '1.0.0'
description 'Immersive hand-washing interaction with bundled InteractSound module'

-- NUI
ui_page 'modules/rc_interact_sound/client/index.html'

files {
    'modules/rc_interact_sound/client/index.html',
    'modules/rc_interact_sound/client/sounds/*.ogg'
}

-- Shared Scripts
shared_scripts {
    '@ox_lib/init.lua',
    '@qbx_core/modules/lib.lua',
    'modules/rc_item_unpacker/config.lua'
}

-- Client Scripts
client_scripts {
    '@NativeUI/NativeUI.lua',
    'client/washhands.lua',
    'modules/**/client.lua'
}

-- Server Scripts
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'modules/**/server.lua'
}

-- Dependencies
dependency 'ox_lib'
dependency 'ox_target'
dependency 'oxmysql'
