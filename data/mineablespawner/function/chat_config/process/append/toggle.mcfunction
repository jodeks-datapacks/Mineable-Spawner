# Check if option is enabled
$execute store success score #is_enabled chat_config.mineablespawner if score $(score_holder) $(scoreboard) matches 1..

# Add toggle indicator + name
$execute if score #is_enabled chat_config.mineablespawner matches 1 run data modify storage config_system:mineablespawner menu append value {text:"[ ✔ ]",color:"green",click_event:{action:"run_command",command:"/$(command_off)"}}
$execute if score #is_enabled chat_config.mineablespawner matches 0 run data modify storage config_system:mineablespawner menu append value {text:"[ ❌ ]",color:"red",click_event:{action:"run_command",command:"/$(command_on)"}}

$data modify storage config_system:mineablespawner menu append value {text:" $(name) ",color:"white"}

# Add description if there
execute if data storage config_system:mineablespawner current_option.description run function mineablespawner:chat_config/process/append/handle/description with storage config_system:mineablespawner current_option

# Line break
function mineablespawner:chat_config/process/append/handle/line_break