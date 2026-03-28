scoreboard players set @s mineable_spawner.raycast_start 0
scoreboard players set @s mineable_spawner.raycast_distance 0

data modify storage mineable_spawner:spawner_data playerUUID set from entity @s UUID

tag @s add mineable_spawner.riding_ray
function mineable_spawner:app/raycast/ray
tag @s remove mineable_spawner.riding_ray