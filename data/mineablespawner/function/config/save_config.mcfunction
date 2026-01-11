$scoreboard players set &break_spawner_pickaxe mineablespawner.config $(dialog_break_spawner_pickaxe)
$data modify storage mineablespawner:root break_spawner_pickaxe set value $(dialog_break_spawner_pickaxe)
execute if score &break_spawner_pickaxe mineablespawner.config matches 0 run data modify storage mineablespawner:root break_spawner_silktouch set value 1
execute if score &break_spawner_pickaxe mineablespawner.config matches 1 run data modify storage mineablespawner:root break_spawner_silktouch set value 0

$scoreboard players set &spawn_egg_drop mineablespawner.config $(dialog_spawn_egg_drop)
$data modify storage mineablespawner:root spawn_egg_drop set value $(dialog_spawn_egg_drop)

$scoreboard players set &xp_drop mineablespawner.config $(dialog_xp_drop)
$data modify storage mineablespawner:root xp_drop set value $(dialog_xp_drop)

data modify storage mineablespawner:root dialog_biggerstacksize_active set value "$(dialog_biggerstacksize_active)"
data modify storage mineablespawner:root dialog_spawn_egg_drop set value "$(dialog_spawn_egg_drop)"
data modify storage mineablespawner:root dialog_xp_drop set value "$(dialog_xp_drop)"