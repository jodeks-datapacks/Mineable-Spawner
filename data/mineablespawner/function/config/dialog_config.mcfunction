scoreboard players set @a mineablespawner.config 0

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Mineable Spawner Config",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:spawner"\
      }\
    }\
  ],\
  inputs:[\
    {\
      "type": "minecraft:single_option",\
      "key": "dialog_break_spawner_pickaxe",\
      "label": "Pickaxe needs silktouch",\
      "options": [\
        {\
          "id": "1",\
          "display": "No",\
          "initial": $(break_spawner_pickaxe)\
        },\
        {\
          "id": "0",\
          "display": "Yes",\
          "initial": $(break_spawner_silktouch)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_xp_drop",\
      "label": "Spawner drops xp",\
      "initial": $(xp_drop),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_spawn_egg_drop",\
      "label": "Spawner drops spawn egg",\
      "initial": $(spawn_egg_drop),\
      "on_true": "1",\
      "on_false": "0"\
    }\
  ],\
  columns:1,\
    "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mineablespawner:config/save_config {dialog_break_spawner_pickaxe:$(dialog_break_spawner_pickaxe), dialog_xp_drop:$(dialog_xp_drop), dialog_spawn_egg_drop:$(dialog_spawn_egg_drop)}"\
    }\
  },\
  actions:[\
    {\
      "label": "Save",\
      "action": {\
        type:"dynamic/run_command",\
        template:"function mineablespawner:config/save_config {dialog_break_spawner_pickaxe:$(dialog_break_spawner_pickaxe), dialog_xp_drop:$(dialog_xp_drop), dialog_spawn_egg_drop:$(dialog_spawn_egg_drop)}"\
      }\
    }\
  ]\
}