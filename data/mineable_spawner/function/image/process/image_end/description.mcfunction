# Append blank
function mineable_spawner:image/process/append/blank

data modify storage mineable_spawner:image data.tellraw append \
  from storage mineable_spawner:image data.current.description_text

# Append blank
function mineable_spawner:image/process/append/blank

# Append line_break
execute unless score $index.image_data mineable_spawner.image = $length mineable_spawner.image \
  run function mineable_spawner:image/process/append/line_break

# Remove first element from the description
data remove storage mineable_spawner:image data.current.description[0]
 