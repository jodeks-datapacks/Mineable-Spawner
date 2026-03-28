execute if block ~ ~ ~ #mineable_spawner:blocks run function mineable_spawner:app/raycast/hit_block with storage mineable_spawner:spawner_data
scoreboard players add @s mineable_spawner.raycast_distance 1
execute if score @s mineable_spawner.raycast_hit matches 0 if score @s mineable_spawner.raycast_distance matches ..50 positioned ^ ^ ^0.1 run function mineable_spawner:app/raycast/ray