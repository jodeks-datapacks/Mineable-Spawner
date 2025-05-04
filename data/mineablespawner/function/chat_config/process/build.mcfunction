# init array
data remove storage config_system:mineablespawner menu
data modify storage config_system:mineablespawner menu set value []

# Add title
# Line break
function mineablespawner:chat_config/process/append/handle/line_break

$data modify storage config_system:mineablespawner menu append value {text:"$(title)",bold:true}

# Line break
function mineablespawner:chat_config/process/append/handle/line_break

data modify storage config_system:mineablespawner menu append value {text:"\u00A7m                                          ",color:"dark_gray"}

# Line break
function mineablespawner:chat_config/process/append/handle/line_break
# Line break
function mineablespawner:chat_config/process/append/handle/line_break

# Store options in mineablespawner storage
$data modify storage config_system:mineablespawner options set value $(options)

scoreboard players set #pagination_enabled chat_config.mineablespawner 0
# Process options for current page
function mineablespawner:chat_config/process/options

# pagination type + store data
execute if score #pagination_enabled chat_config.mineablespawner matches 1 run data modify storage config_system:mineablespawner pagination set from storage config_system:mineablespawner options[-1]
execute if score #pagination_enabled chat_config.mineablespawner matches 1 run data remove storage config_system:mineablespawner options[-1]

# Get current page from selector
$execute if score #pagination_enabled chat_config.mineablespawner matches 1 run execute store result score #current_page chat_config.mineablespawner run scoreboard players get $(target) chat_config.mineablespawner.page

# Ensure current page is at least 1
execute if score #pagination_enabled chat_config.mineablespawner matches 1 run execute if score #current_page chat_config.mineablespawner matches ..0 run scoreboard players set #current_page chat_config.mineablespawner 1

# copy of all options
data modify storage config_system:mineablespawner all_options set from storage config_system:mineablespawner options

# Filter options for current page
function mineablespawner:chat_config/process/filter_options

# Add pagination
execute if score #pagination_enabled chat_config.mineablespawner matches 1 run function mineablespawner:chat_config/process/pagination

# Display
$tellraw $(target) {nbt:"menu[]",storage:"config_system:mineablespawner",interpret:true,separator:""}