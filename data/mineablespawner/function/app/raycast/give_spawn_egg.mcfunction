$summon item $(spawner_pos_x) $(spawner_pos_y) $(spawner_pos_z) {Item:{id:"$(spawn_egg_id)_spawn_egg"}}

$execute as @e[type=item,nbt={Item:{id:"$(spawn_egg_id)_spawn_egg"}}] run data modify entity @s Motion set value [0.0d,0.25d,0.02d]

data remove storage mineablespawner:spawner_data spawn_egg_id

data remove storage mineablespawner:spawner_data spawner_pos_x
data remove storage mineablespawner:spawner_data spawner_pos_y
data remove storage mineablespawner:spawner_data spawner_pos_z

$data remove storage mineablespawner:spawner_data spawn_egg."$(playerUUID)"

$data remove storage mineablespawner:spawner_data spawner_pos."$(playerUUID).x"
$data remove storage mineablespawner:spawner_data spawner_pos."$(playerUUID).y"
$data remove storage mineablespawner:spawner_data spawner_pos."$(playerUUID).z"
