$data modify storage mineablespawner:spawner_data spawn_egg_id set from storage mineablespawner:spawner_data spawn_egg."$(playerUUID)"

$data modify storage mineablespawner:spawner_data spawner_pos_x set from storage mineablespawner:spawner_data spawner_pos."$(playerUUID).x"
$data modify storage mineablespawner:spawner_data spawner_pos_y set from storage mineablespawner:spawner_data spawner_pos."$(playerUUID).y"
$data modify storage mineablespawner:spawner_data spawner_pos_z set from storage mineablespawner:spawner_data spawner_pos."$(playerUUID).z"

function mineablespawner:app/raycast/give_spawn_egg with storage mineablespawner:spawner_data