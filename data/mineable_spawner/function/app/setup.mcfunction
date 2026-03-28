scoreboard objectives add jodek.config dummy
execute unless score &mineable_spawner_load_message jodek.config = &mineable_spawner_load_message jodek.config run scoreboard players set &mineable_spawner_load_message jodek.config 1
execute unless score &mineable_spawner_advancements jodek.config = &mineable_spawner_advancements jodek.config run scoreboard players set &mineable_spawner_advancements jodek.config 1

scoreboard objectives add mineable_spawner.config trigger
scoreboard players set @a mineable_spawner.config 0

scoreboard objectives add mined_spawner.mineable_spawner minecraft.mined:spawner

scoreboard objectives add mineable_spawner.image dummy

scoreboard objectives add mineable_spawner.mined minecraft.mined:spawner

scoreboard objectives add mineable_spawner.raycast_start dummy
scoreboard objectives add mineable_spawner.raycast_hit dummy
scoreboard objectives add mineable_spawner.raycast_distance dummy
scoreboard objectives add mineable_spawner.raycast_check dummy

scoreboard objectives add mineable_spawner.data dummy

function mineable_spawner:config/set_default

function mineable_spawner:config/image