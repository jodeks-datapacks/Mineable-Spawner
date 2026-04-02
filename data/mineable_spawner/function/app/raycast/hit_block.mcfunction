$data modify storage mineable_spawner:root data.spawn_egg."$(playerUUID)" set from block ~ ~ ~ SpawnData.entity.id

$data modify storage mineable_spawner:root data.spawner_pos."$(playerUUID).x" set from block ~ ~ ~ x

$data modify storage mineable_spawner:root data.spawner_pos."$(playerUUID).y" set from block ~ ~ ~ y

$data modify storage mineable_spawner:root data.spawner_pos."$(playerUUID).z" set from block ~ ~ ~ z