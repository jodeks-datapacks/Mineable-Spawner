# Append blank
function mineablespawner:image/process/append/blank

data modify storage mineablespawner:image tellraw append \
  from storage mineablespawner:image current.description_text

# Append blank
function mineablespawner:image/process/append/blank

# Append line_break
execute unless score $index.image_data mineablespawner.image = $length mineablespawner.image \
  run function mineablespawner:image/process/append/line_break

# Remove first element from the description
data remove storage mineablespawner:image current.description[0]
 