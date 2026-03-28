execute unless data storage mineable_spawner:root data.break_spawner_pickaxe run data modify storage mineable_spawner:root data.break_spawner_pickaxe set value 1
execute unless data storage mineable_spawner:root data.break_spawner_silktouch run data modify storage mineable_spawner:root data.break_spawner_silktouch set value 0
data modify storage mineable_spawner:root data.dialog_break_spawner_pickaxe set value "$(dialog_break_spawner_pickaxe)"
execute unless data storage mineable_spawner:root data.spawn_egg_drop run data modify storage mineable_spawner:root data.spawn_egg_drop set value 1
data modify storage mineable_spawner:root data.dialog_spawn_egg_drop set value "$(dialog_spawn_egg_drop)"
execute unless data storage mineable_spawner:root data.xp_drop run data modify storage mineable_spawner:root data.xp_drop set value 1
data modify storage mineable_spawner:root data.dialog_xp_drop set value "$(dialog_xp_drop)"

execute unless score &spawn_egg_drop mineable_spawner.config = &spawn_egg_drop mineable_spawner.config run scoreboard players set &spawn_egg_drop mineable_spawner.config 1
execute unless score &xp_drop mineable_spawner.config = &xp_drop mineable_spawner.config run scoreboard players set &xp_drop mineable_spawner.config 1
execute unless score &break_spawner_pickaxe mineable_spawner.config = &break_spawner_pickaxe mineable_spawner.config run scoreboard players set &break_spawner_pickaxe mineable_spawner.config 1