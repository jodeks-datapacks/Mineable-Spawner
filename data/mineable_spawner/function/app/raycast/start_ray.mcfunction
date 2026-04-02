scoreboard players set @s mineable_spawner.raycast_start 0
scoreboard players set @s mineable_spawner.raycast_distance 0
scoreboard players set @s mineable_spawner.raycast_hit 0

tag @s add mineable_spawner.riding_ray
function mineable_spawner:app/raycast/ray
tag @s remove mineable_spawner.riding_ray