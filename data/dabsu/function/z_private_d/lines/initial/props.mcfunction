data get storage dabsu:run spawner.SpawnRange
$data modify storage dabsu:run dialog.dialog.inputs[0].initial set value "$(SpawnCount)"
$data modify storage dabsu:run dialog.dialog.inputs[1].initial set value "$(SpawnRange)"
$data modify storage dabsu:run dialog.dialog.inputs[2].initial set value "$(RequiredPlayerRange)"
$data modify storage dabsu:run dialog.dialog.inputs[3].initial set value "$(MinSpawnDelay)"
$data modify storage dabsu:run dialog.dialog.inputs[4].initial set value "$(MaxSpawnDelay)"
$data modify storage dabsu:run dialog.dialog.inputs[5].initial set value "$(MaxNearbyEntities)"