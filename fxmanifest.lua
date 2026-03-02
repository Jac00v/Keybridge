fx_version 'cerulean'
game 'gta5'

description 'vehicle key management system'
repository 'https://github.com/Qbox-project/qbx_vehiclekeys'
version '1.0.2'

ox_lib 'locale'

shared_scripts {
    '@ox_lib/init.lua',
    '@qbx_core/modules/lib.lua',
    'shared/types.lua',
    'shared/vehicle-config.lua',
    'bridge/qb/shared.lua',
}

client_scripts {
    '@qbx_core/modules/playerdata.lua',
    'bridge/qb/client.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'bridge/qb/server.lua',
}

files {
    'locales/*.json',
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'
provide 'qb-vehiclekeys'
