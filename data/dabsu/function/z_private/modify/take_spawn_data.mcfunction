data modify storage dabsu:run spawner set from block ~ ~ ~
execute if data storage dabsu:run spawner.SpawnPotentials[0].data.entity.id run return fail
execute unless data storage dabsu:run spawner.SpawnData.entity.id run return fail

data modify storage dabsu:run temp2 set value {weight:100}
data modify storage dabsu:run temp2.data set from storage dabsu:run spawner.SpawnData
data modify block ~ ~ ~ SpawnPotentials append from storage dabsu:run temp2