
# Check options to process
execute unless data storage config_system:mineablespawner options[0] run return 0

# Process first option
data modify storage config_system:mineablespawner current_option set from storage config_system:mineablespawner options[0]

# run based on option type
execute if data storage config_system:mineablespawner current_option{type:"toggle"} run function mineablespawner:chat_config/process/append/toggle with storage config_system:mineablespawner current_option
execute if data storage config_system:mineablespawner current_option{type:"slider"} run function mineablespawner:chat_config/process/append/slider with storage config_system:mineablespawner current_option
execute if data storage config_system:mineablespawner current_option{type:"button"} run function mineablespawner:chat_config/process/append/button with storage config_system:mineablespawner current_option
execute if data storage config_system:mineablespawner current_option{type:"header"} run function mineablespawner:chat_config/process/append/header with storage config_system:mineablespawner current_option
execute if data storage config_system:mineablespawner current_option{type:"pagination"} run scoreboard players set #pagination_enabled chat_config.mineablespawner 1

# remove processed option
data remove storage config_system:mineablespawner options[0]

# recursive call all options
function mineablespawner:chat_config/process/options


