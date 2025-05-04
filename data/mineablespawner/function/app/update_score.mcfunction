schedule function mineablespawner:app/update_score 5s

execute if score &break_spawner config.mineablespawner matches 0 run scoreboard players set @a break_spawner.mineablespawner 0

execute if score &break_spawner config.mineablespawner matches 1 run scoreboard players set @a break_spawner.mineablespawner 1

execute if score &break_spawner config.mineablespawner matches 2 run scoreboard players set @a break_spawner.mineablespawner 2

execute as @a store success score @s operator.check run random reset 1 1