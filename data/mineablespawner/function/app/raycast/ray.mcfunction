#Run a function if a block was successfully detected.

execute if block ~ ~ ~ #mineablespawner:blocks run function mineablespawner:app/raycast/hit_block with storage mineablespawner:spawner_data
scoreboard players add &distance spawnerraycasttemp 1

execute if score &hit spawnerraycasttemp matches 0 if score &distance spawnerraycasttemp matches 51.. run scoreboard players set &hit spawnerraycasttemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score &hit spawnerraycasttemp matches 0 if score &distance spawnerraycasttemp matches ..50 positioned ^ ^ ^0.1 run function mineablespawner:app/raycast/ray

