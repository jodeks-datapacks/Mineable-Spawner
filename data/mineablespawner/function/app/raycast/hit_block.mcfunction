#Mark the ray as having found a block.

scoreboard players set &hit spawnerraycasttemp 1

#Running custom commands since the block was found.

$data modify storage mineablespawner:spawner_data spawn_egg."$(playerUUID)" set from block ~ ~ ~ SpawnData.entity.id

$data modify storage mineablespawner:spawner_data spawner_pos."$(playerUUID).x" set from block ~ ~ ~ x

$data modify storage mineablespawner:spawner_data spawner_pos."$(playerUUID).y" set from block ~ ~ ~ y

$data modify storage mineablespawner:spawner_data spawner_pos."$(playerUUID).z" set from block ~ ~ ~ z