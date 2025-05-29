$data modify block ~ ~ ~ SpawnPotentials[$(index)].data.entity merge from storage dabsu:run run
$execute if data storage dabsu:run run{Health:-1.0f} run data remove block ~ ~ ~ SpawnPotentials[$(index)].data.entity.Health
$execute unless data block ~ ~ ~ SpawnPotentials[$(index)].data.entity.attributes[0] run data remove block ~ ~ ~ SpawnPotentials[$(index)].data.entity.attributes