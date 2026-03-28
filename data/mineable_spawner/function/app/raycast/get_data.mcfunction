$data modify storage mineable_spawner:spawner_data spawn_egg_id set from storage mineable_spawner:spawner_data spawn_egg."$(playerUUID)"

$data modify storage mineable_spawner:spawner_data spawner_pos_x set from storage mineable_spawner:spawner_data spawner_pos."$(playerUUID).x"
$data modify storage mineable_spawner:spawner_data spawner_pos_y set from storage mineable_spawner:spawner_data spawner_pos."$(playerUUID).y"
$data modify storage mineable_spawner:spawner_data spawner_pos_z set from storage mineable_spawner:spawner_data spawner_pos."$(playerUUID).z"

function mineable_spawner:app/raycast/give_spawn_egg with storage mineable_spawner:spawner_data