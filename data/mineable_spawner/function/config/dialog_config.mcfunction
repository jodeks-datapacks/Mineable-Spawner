scoreboard players set @a mineable_spawner.config 0

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
      "label": {\
        "translate": "mineable_spawner.config.pickaxe_silktouch",\
        "fallback": "Pickaxe needs silktouch"\
      },\
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
      "label": {\
        "translate": "mineable_spawner.config.xp_drop",\
        "fallback": "Spawner drops xp"\
      },\
      "initial": $(xp_drop),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_spawn_egg_drop",\
      "label": {\
        "translate": "mineable_spawner.config.spawn_egg_drop",\
        "fallback": "Spawner drops spawn egg"\
      },\
      "initial": $(spawn_egg_drop),\
      "on_true": "1",\
      "on_false": "0"\
    }\
  ],\
  columns:1,\
    "exit_action": {\
      "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
    "action": {\
      type:"dynamic/run_command",\
      template:"function mineable_spawner:config/save {dialog_break_spawner_pickaxe:$(dialog_break_spawner_pickaxe), dialog_xp_drop:$(dialog_xp_drop), dialog_spawn_egg_drop:$(dialog_spawn_egg_drop)}"\
    }\
  },\
  actions:[\
    {\
        "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      "action": {\
        type:"dynamic/run_command",\
        template:"function mineable_spawner:config/save {dialog_break_spawner_pickaxe:$(dialog_break_spawner_pickaxe), dialog_xp_drop:$(dialog_xp_drop), dialog_spawn_egg_drop:$(dialog_spawn_egg_drop)}"\
      }\
    }\
  ]\
}