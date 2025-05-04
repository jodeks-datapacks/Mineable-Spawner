#> mineablespawner:image/process/generate
#
# This function generates the image data.

data modify storage mineablespawner:image current.image_data set from storage mineablespawner:image image_data
data modify storage mineablespawner:image current.description set from storage mineablespawner:image description
data modify storage mineablespawner:image current.pixel_character set from storage mineablespawner:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data mineablespawner.image 0
# Set width
execute store result score $width mineablespawner.image run data get storage mineablespawner:image width
# Set height
execute store result score $height mineablespawner.image run data get storage mineablespawner:image height
# Set length
scoreboard players operation $length mineablespawner.image = $width mineablespawner.image
scoreboard players operation $length mineablespawner.image *= $height mineablespawner.image
# Clear remaining entries in tellraw
data remove storage mineablespawner:image tellraw

# Add spacing on top
function mineablespawner:image/process/append/line_break
# Loop over image data
function mineablespawner:image/process/loop_over_image_data
# Add spacing on bottom
function mineablespawner:image/process/append/line_break