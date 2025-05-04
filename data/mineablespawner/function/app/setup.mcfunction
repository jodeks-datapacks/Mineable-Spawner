
scoreboard objectives add help.mineablespawner trigger

scoreboard objectives add break_spawner.mineablespawner dummy

scoreboard objectives add config.mineablespawner dummy

execute as @a unless score &break_spawner_pickaxe config.mineablespawner = &break_spawner_pickaxe config.mineablespawner run scoreboard players set &break_spawner_pickaxe config.mineablespawner 1

execute as @a unless score &break_spawner_silktouch config.mineablespawner = &break_spawner_silktouch config.mineablespawner run scoreboard players set &break_spawner_silktouch config.mineablespawner 0

execute as @a unless score &spawn_egg_drop config.mineablespawner = &spawn_egg_drop config.mineablespawner run scoreboard players set &spawn_egg_drop config.mineablespawner 1

execute as @a unless score &xp_drop config.mineablespawner = &xp_drop config.mineablespawner run scoreboard players set &xp_drop config.mineablespawner 1

scoreboard objectives add mined_spawner.mineablespawner minecraft.mined:spawner


scoreboard objectives add mineablespawner.image dummy

scoreboard objectives add mineablespawner.config trigger


scoreboard objectives add mineablespawner.mined minecraft.mined:spawner


scoreboard objectives add spawnerraycasttemp dummy

scoreboard players set &hit spawnerraycasttemp 1


scoreboard objectives add mineablespawner.data dummy


function mineablespawner:chat_config/init

function mineablespawner:config/image

schedule function mineablespawner:app/update_score 5s