data modify storage dabsu:run spawner.SpawnPotentials append value {data:{entity:{id:"pig"},},weight:100}
data modify storage dabsu:run spawner.SpawnPotentials[-1].data set from storage dabsu:run spawner.SpawnData
data modify block ~ ~ ~ SpawnPotentials set from storage dabsu:run spawner.SpawnPotentials