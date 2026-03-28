scoreboard players set @a[tag=mineable_spawner.riding_ray] mineable_spawner.raycast_hit 1

$data modify storage mineable_spawner:spawner_data spawn_egg."$(playerUUID)" set from block ~ ~ ~ SpawnData.entity.id

$data modify storage mineable_spawner:spawner_data spawner_pos."$(playerUUID).x" set from block ~ ~ ~ x

$data modify storage mineable_spawner:spawner_data spawner_pos."$(playerUUID).y" set from block ~ ~ ~ y

$data modify storage mineable_spawner:spawner_data spawner_pos."$(playerUUID).z" set from block ~ ~ ~ z