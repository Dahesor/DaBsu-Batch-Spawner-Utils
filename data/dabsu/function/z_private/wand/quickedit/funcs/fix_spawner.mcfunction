execute if data block ~ ~ ~ SpawnPotentials[0] run return fail

data modify storage dabsu:run run set value {weight:100,data:{}}

execute if data block ~ ~ ~ SpawnData.entity.id run data modify storage dabsu:run run.data set from block ~ ~ ~ SpawnData
execute if data block ~ ~ ~ SpawnData.entity.id run data modify block ~ ~ ~ SpawnPotentials append from storage dabsu:run run
