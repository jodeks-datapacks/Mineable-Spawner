scoreboard players enable @a help.mineablespawner
execute as @a if score @s help.mineablespawner matches 1 run function mineablespawner:app/help

scoreboard players enable @a mineablespawner.config
execute as @a if score @s mineablespawner.config matches 1 run function mineablespawner:config/chat_config

execute as @a[scores={mined_spawner.mineablespawner=1..}] run function mineablespawner:app/kill_xp


execute if score &spawn_egg_drop config.mineablespawner matches 1 if score &hit spawnerraycasttemp matches 1 as @a[predicate=mineablespawner:holding_pickaxe] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineablespawner:app/raycast/start_ray

execute if score &spawn_egg_drop config.mineablespawner matches 1 as @a[predicate=mineablespawner:holding_pickaxe,scores={mined_spawner.mineablespawner=1..}] run function mineablespawner:app/raycast/get_uuid


execute as @a[scores={mined_spawner.mineablespawner=1..}] run scoreboard players set @s mined_spawner.mineablespawner 0