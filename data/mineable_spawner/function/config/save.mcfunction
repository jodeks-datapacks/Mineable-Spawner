$scoreboard players set &break_spawner_pickaxe mineable_spawner.config $(dialog_break_spawner_pickaxe)
$data modify storage mineable_spawner:root data.break_spawner_pickaxe set value $(dialog_break_spawner_pickaxe)
execute if score &break_spawner_pickaxe mineable_spawner.config matches 0 run data modify storage mineable_spawner:root data.break_spawner_silktouch set value 1
execute if score &break_spawner_pickaxe mineable_spawner.config matches 1 run data modify storage mineable_spawner:root data.break_spawner_silktouch set value 0

$scoreboard players set &spawn_egg_drop mineable_spawner.config $(dialog_spawn_egg_drop)
$data modify storage mineable_spawner:root data.spawn_egg_drop set value $(dialog_spawn_egg_drop)

$scoreboard players set &xp_drop mineable_spawner.config $(dialog_xp_drop)
$data modify storage mineable_spawner:root data.xp_drop set value $(dialog_xp_drop)

data modify storage mineable_spawner:root data.dialog_bigger_stack_size_active set value "$(dialog_bigger_stack_size_active)"
data modify storage mineable_spawner:root data.dialog_spawn_egg_drop set value "$(dialog_spawn_egg_drop)"
data modify storage mineable_spawner:root data.dialog_xp_drop set value "$(dialog_xp_drop)"