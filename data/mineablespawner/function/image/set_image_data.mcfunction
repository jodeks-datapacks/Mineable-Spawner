#> mineablespawner:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage mineablespawner:image image_data  
# @writes storage mineablespawner:image width  
# @writes storage mineablespawner:image height  
# @writes storage mineablespawner:image background_color  
# @writes storage mineablespawner:image description  
# @writes storage mineablespawner:image pixel_character.blank  
# @writes storage mineablespawner:image pixel_character.chat  
# @writes storage mineablespawner:image pixel_character.lore

data remove storage mineablespawner:image image_data
data remove storage mineablespawner:image width
data remove storage mineablespawner:image height
data remove storage mineablespawner:image background_color
data remove storage mineablespawner:image description

$data modify storage mineablespawner:image image_data set value $(image_data)
$data modify storage mineablespawner:image width set value $(width)
$data modify storage mineablespawner:image height set value $(height)
$data modify storage mineablespawner:image background_color set value "$(background_color)"
$data modify storage mineablespawner:image description set value $(description)

data modify storage mineablespawner:image pixel_character.blank set value "　"
data modify storage mineablespawner:image pixel_character.pixel set value "▌▌"
data modify storage mineablespawner:image pixel_character.line_break set value '\n'

function mineablespawner:image/process/generate
