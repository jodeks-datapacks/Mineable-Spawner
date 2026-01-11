scoreboard players set &hit spawnerraycasttemp 0
scoreboard players set &distance spawnerraycasttemp 0

data modify storage mineablespawner:spawner_data playerUUID set from entity @s UUID

function mineablespawner:app/raycast/ray