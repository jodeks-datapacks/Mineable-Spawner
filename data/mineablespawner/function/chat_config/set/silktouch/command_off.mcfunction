scoreboard players set &break_spawner_silktouch config.mineablespawner 0
execute if score &break_spawner_pickaxe config.mineablespawner matches 1 run scoreboard players set @s break_spawner.mineablespawner 1
execute if score &break_spawner_pickaxe config.mineablespawner matches 0 run scoreboard players set @s break_spawner.mineablespawner 0

function mineablespawner:config/chat_config

playsound block.wooden_button.click_off master @s