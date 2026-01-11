scoreboard players enable @a mineablespawner.config
execute as @a if score @s mineablespawner.config matches 1 run function mineablespawner:config/dialog_config with storage mineablespawner:root

execute as @a[scores={mined_spawner.mineablespawner=1..}] run function mineablespawner:app/kill_xp


execute if score &spawn_egg_drop mineablespawner.config matches 1 as @a[predicate=mineablespawner:holding_pickaxe] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineablespawner:app/raycast/start_ray

execute if score &break_spawner_pickaxe mineablespawner.config matches 1 if score &spawn_egg_drop mineablespawner.config matches 1 as @a[predicate=mineablespawner:holding_pickaxe,scores={mined_spawner.mineablespawner=1..}] run function mineablespawner:app/raycast/get_uuid

execute if score &break_spawner_pickaxe mineablespawner.config matches 0 if score &spawn_egg_drop mineablespawner.config matches 1 as @a[predicate=mineablespawner:holding_pickaxe_silktouch,scores={mined_spawner.mineablespawner=1..}] run function mineablespawner:app/raycast/get_uuid

execute as @a[scores={mined_spawner.mineablespawner=1..}] run scoreboard players set @s mined_spawner.mineablespawner 0