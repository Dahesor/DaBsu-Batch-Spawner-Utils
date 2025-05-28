data modify storage dabsu:run data set value {last_edit:{}}
data modify storage dabsu:run data.last_edit.RequiredPlayerRange set from storage dabsu:run spawner.RequiredPlayerRange
data modify storage dabsu:run data.last_edit.SpawnRange set from storage dabsu:run spawner.SpawnRange
data modify storage dabsu:run data.last_edit.SpawnCount set from storage dabsu:run spawner.SpawnCount
data modify entity @s data merge from storage dabsu:run data