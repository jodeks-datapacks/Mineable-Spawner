
# check for options
execute unless data storage config_system:mineablespawner all_options[0] run return 0

# store current option
data modify storage config_system:mineablespawner current_filter_option set from storage config_system:mineablespawner all_options[0]

# check if option has page attribute
execute store success score #has_page_attr chat_config.mineablespawner if data storage config_system:mineablespawner current_filter_option.page

# if option has page attribute, check if it matches current page
execute if score #has_page_attr chat_config.mineablespawner matches 1 store result score #option_page chat_config.mineablespawner run data get storage config_system:mineablespawner current_filter_option.page
execute if score #has_page_attr chat_config.mineablespawner matches 1 if score #option_page chat_config.mineablespawner = #current_page chat_config.mineablespawner run data modify storage config_system:mineablespawner options append from storage config_system:mineablespawner all_options[0]

# Remove processed option + increase counter
data remove storage config_system:mineablespawner all_options[0]

# recursive call until return is 0
function mineablespawner:chat_config/process/filter_options_recursive