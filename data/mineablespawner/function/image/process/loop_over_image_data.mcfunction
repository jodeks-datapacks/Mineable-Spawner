# Copy current pixel
data modify storage mineablespawner:image current.pixel_color set \
  from storage mineablespawner:image current.image_data[0]
data modify storage mineablespawner:image current.description_text set \
  from storage mineablespawner:image current.description[0]

scoreboard players add $index.image_data mineablespawner.image 1

# Calculate column
scoreboard players operation $index.column mineablespawner.image = $index.image_data mineablespawner.image
scoreboard players operation $index.column mineablespawner.image %= $width mineablespawner.image

# Calculate row
scoreboard players operation $index.row mineablespawner.image = $index.image_data mineablespawner.image
scoreboard players operation $index.row mineablespawner.image /= $width mineablespawner.image

# Append start spacing
execute if score $index.column mineablespawner.image matches 1 run \
  function mineablespawner:image/process/append/blank

# Append colored pixel
execute unless data storage mineablespawner:image current{pixel_color: ""} run \
  function mineablespawner:image/process/append/pixel
# Append background pixel
execute if data storage mineablespawner:image current{pixel_color: ""} run \
  function mineablespawner:image/process/append/background

# Append description
execute if score $index.column mineablespawner.image matches 0 run \
    function mineablespawner:image/process/image_end/description

# Remove first element from the image_data array
data remove storage mineablespawner:image current.image_data[0]
# Loop over rows
execute if score $index.row mineablespawner.image < $height mineablespawner.image run \
  function mineablespawner:image/process/loop_over_image_data
