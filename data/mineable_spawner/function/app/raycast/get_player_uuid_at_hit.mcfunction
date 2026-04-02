scoreboard players set @a[tag=mineable_spawner.riding_ray] mineable_spawner.raycast_hit 1

data modify storage mineable_spawner:root data.playerUUID set from entity @s UUID

function mineable_spawner:app/raycast/hit_block with storage mineable_spawner:root data