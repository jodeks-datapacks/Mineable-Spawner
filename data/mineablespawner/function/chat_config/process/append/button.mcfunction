# Add button
$data modify storage config_system:mineablespawner menu append value {text:" [$(name)] ",color:"aqua",click_event:{action:"run_command",command:"/$(command)"}}

# Line break
function mineablespawner:chat_config/process/append/handle/line_break

# Add description if there
execute if data storage config_system:mineablespawner current_option.description run function mineablespawner:chat_config/process/append/handle/description with storage config_system:mineablespawner current_option

# Line break
function mineablespawner:chat_config/process/append/handle/line_break


