scoreboard players set @a mineablespawner.config 0

# Set options per page - adjust this value as needed
scoreboard players set #total_pages chat_config.mineablespawner 1

execute unless score @s chat_config.mineablespawner.page matches 0.. run scoreboard players set @s chat_config.mineablespawner.page 1

function mineablespawner:chat_config/process/build {\
  title: "Mineable Spawner Config",\
  target: "@s",\
  options: [\
    {\
      type: "toggle",\
      name: "Pickaxe",\
      scoreboard: "config.mineablespawner",\
      score_holder: "&break_spawner_pickaxe",\
      command_on: "execute as @s[scores={operator.check=1}] run function mineablespawner:chat_config/set/enable/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function mineablespawner:chat_config/set/enable/command_off"\
    },\
    {\
      type: "toggle",\
      name: "Pickaxe needs silktouch",\
      scoreboard: "config.mineablespawner",\
      score_holder: "&break_spawner_silktouch",\
      command_on: "execute as @s[scores={operator.check=1}] run function mineablespawner:chat_config/set/silktouch/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function mineablespawner:chat_config/set/silktouch/command_off"\
    },\
    {\
      type: "toggle",\
      name: "Spawners drop xp",\
      scoreboard: "config.mineablespawner",\
      score_holder: "&xp_drop",\
      command_on: "execute as @s[scores={operator.check=1}] run function mineablespawner:chat_config/set/xp_drop/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function mineablespawner:chat_config/set/xp_drop/command_off"\
    },\
    {\
      type: "toggle",\
      name: "Spawners drop spawnegg",\
      scoreboard: "config.mineablespawner",\
      score_holder: "&spawn_egg_drop",\
      command_on: "execute as @s[scores={operator.check=1}] run function mineablespawner:chat_config/set/spawn_egg_drop/command_on",\
      command_off: "execute as @s[scores={operator.check=1}] run function mineablespawner:chat_config/set/spawn_egg_drop/command_off"\
    }\
  ]\
}