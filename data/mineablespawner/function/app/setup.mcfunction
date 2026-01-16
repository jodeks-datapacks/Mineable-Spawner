scoreboard objectives add mineablespawner.config trigger

scoreboard players set @a mineablespawner.config 0

execute unless score &break_spawner_pickaxe mineablespawner.config = &break_spawner_pickaxe mineablespawner.config run data modify storage mineablespawner:root break_spawner_pickaxe set value 1
execute unless score &break_spawner_pickaxe mineablespawner.config = &break_spawner_pickaxe mineablespawner.config run data modify storage mineablespawner:root break_spawner_silktouch set value 0
execute unless score &break_spawner_pickaxe mineablespawner.config = &break_spawner_pickaxe mineablespawner.config run data modify storage mineablespawner:root dialog_break_spawner_pickaxe set value "$(dialog_break_spawner_pickaxe)"
execute unless score &break_spawner_pickaxe mineablespawner.config = &break_spawner_pickaxe mineablespawner.config run data modify storage mineablespawner:root spawn_egg_drop set value 1
execute unless score &break_spawner_pickaxe mineablespawner.config = &break_spawner_pickaxe mineablespawner.config run data modify storage mineablespawner:root dialog_spawn_egg_drop set value "$(dialog_spawn_egg_drop)"
execute unless score &break_spawner_pickaxe mineablespawner.config = &break_spawner_pickaxe mineablespawner.config run data modify storage mineablespawner:root xp_drop set value 1
execute unless score &break_spawner_pickaxe mineablespawner.config = &break_spawner_pickaxe mineablespawner.config run data modify storage mineablespawner:root dialog_xp_drop set value "$(dialog_xp_drop)"

execute unless score &spawn_egg_drop mineablespawner.config = &spawn_egg_drop mineablespawner.config run scoreboard players set &spawn_egg_drop mineablespawner.config 1
execute unless score &xp_drop mineablespawner.config = &xp_drop mineablespawner.config run scoreboard players set &xp_drop mineablespawner.config 1
execute unless score &break_spawner_pickaxe mineablespawner.config = &break_spawner_pickaxe mineablespawner.config run scoreboard players set &break_spawner_pickaxe mineablespawner.config 1

scoreboard objectives add mined_spawner.mineablespawner minecraft.mined:spawner

scoreboard objectives add mineablespawner.image dummy

scoreboard objectives add mineablespawner.mined minecraft.mined:spawner

scoreboard objectives add spawnerraycasttemp dummy

scoreboard players set &hit spawnerraycasttemp 1

scoreboard objectives add mineablespawner.data dummy

function mineablespawner:config/image