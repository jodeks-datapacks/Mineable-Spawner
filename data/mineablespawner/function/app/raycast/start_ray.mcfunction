#Setting up the raycasting data.

tag @s add vdvray
scoreboard players set &hit spawnerraycasttemp 0
scoreboard players set &distance spawnerraycasttemp 0

#Activating the raycast. This function will call itself until it is done.

function mineablespawner:app/raycast/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove vdvray

data modify storage mineablespawner:spawner_data playerUUID set from entity @s UUID

