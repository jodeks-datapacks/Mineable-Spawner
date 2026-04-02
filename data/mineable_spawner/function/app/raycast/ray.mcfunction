execute if block ~ ~ ~ minecraft:spawner run function mineable_spawner:app/raycast/get_player_uuid_at_hit
scoreboard players add @s mineable_spawner.raycast_distance 1
execute if score @s mineable_spawner.raycast_hit matches 0 if score @s mineable_spawner.raycast_distance matches ..50 positioned ^ ^ ^0.1 run function mineable_spawner:app/raycast/ray