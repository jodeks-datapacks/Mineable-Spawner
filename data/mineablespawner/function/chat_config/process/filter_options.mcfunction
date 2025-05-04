
# clear options
data remove storage config_system:mineablespawner options
data modify storage config_system:mineablespawner options set value []

# Get current page 
scoreboard players operation #current_page chat_config.mineablespawner = #current_page chat_config.mineablespawner

# recursive filter options
function mineablespawner:chat_config/process/filter_options_recursive