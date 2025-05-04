# Add header
data modify storage config_system:mineablespawner menu append value {"text":"","color":"white"}
$data modify storage config_system:mineablespawner menu[-1].text set value "$(name)"

# Line break
function mineablespawner:chat_config/process/append/handle/line_break

# Add description if there
execute if data storage config_system:mineablespawner current_option.description run function mineablespawner:chat_config/process/append/handle/description with storage config_system:mineablespawner current_option

# Line break
function mineablespawner:chat_config/process/append/handle/line_break


