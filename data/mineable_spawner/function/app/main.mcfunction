scoreboard players enable @a mineable_spawner.config
execute as @a if score @s mineable_spawner.config matches 1 run function mineable_spawner:config/dialog_config with storage mineable_spawner:root data

execute as @a[scores={mined_spawner.mineable_spawner=1..}] run function mineable_spawner:app/kill_xp


execute if score &spawn_egg_drop mineable_spawner.config matches 1 as @a[predicate=mineable_spawner:holding_pickaxe] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineable_spawner:app/raycast/start_ray

execute if score &break_spawner_pickaxe mineable_spawner.config matches 1 if score &spawn_egg_drop mineable_spawner.config matches 1 as @a[predicate=mineable_spawner:holding_pickaxe,scores={mined_spawner.mineable_spawner=1..}] run function mineable_spawner:app/raycast/get_uuid

execute if score &break_spawner_pickaxe mineable_spawner.config matches 0 if score &spawn_egg_drop mineable_spawner.config matches 1 as @a[predicate=mineable_spawner:holding_pickaxe_silktouch,scores={mined_spawner.mineable_spawner=1..}] run function mineable_spawner:app/raycast/get_uuid

execute as @a[scores={mined_spawner.mineable_spawner=1..}] run scoreboard players set @s mined_spawner.mineable_spawner 0