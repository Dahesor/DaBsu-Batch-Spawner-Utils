data modify storage dabsu:run spawner set from block ~ ~ ~

data modify storage dabsu:run run set from storage dabsu:run form
data remove storage dabsu:run run.index
data modify storage dabsu:run form set value {MaxNearbyEntities:0s,MaxSpawnDelay:0s,MinSpawnDelay:0s,RequiredPlayerRange:0s,SpawnCount:0s,SpawnRange:0s}
data modify storage dabsu:run form merge from storage dabsu:run run


execute store result score $original calc.dabsu run data get storage dabsu:run spawner.MaxNearbyEntities
execute store result score $adjust calc.dabsu run data get storage dabsu:run form.MaxNearbyEntities
scoreboard players operation $adjust calc.dabsu += $original calc.dabsu
execute if score $adjust calc.dabsu matches ..0 run scoreboard players set $adjust calc.dabsu 1
execute store result storage dabsu:run form.MaxNearbyEntities short 1 run scoreboard players get $adjust calc.dabsu

execute store result score $original calc.dabsu run data get storage dabsu:run spawner.SpawnRange
execute store result score $adjust calc.dabsu run data get storage dabsu:run form.SpawnRange
scoreboard players operation $adjust calc.dabsu += $original calc.dabsu
execute if score $adjust calc.dabsu matches ..0 run scoreboard players set $adjust calc.dabsu 1
execute store result storage dabsu:run form.SpawnRange short 1 run scoreboard players get $adjust calc.dabsu

execute store result score $original calc.dabsu run data get storage dabsu:run spawner.MinSpawnDelay
execute store result score $adjust calc.dabsu run data get storage dabsu:run form.MinSpawnDelay
scoreboard players operation $adjust calc.dabsu += $original calc.dabsu
execute if score $adjust calc.dabsu matches ..0 run scoreboard players set $adjust calc.dabsu 1
scoreboard players operation $hold calc.dabsu = $adjust calc.dabsu
execute store result storage dabsu:run form.MinSpawnDelay short 1 run scoreboard players get $adjust calc.dabsu

execute store result score $original calc.dabsu run data get storage dabsu:run spawner.MaxSpawnDelay
execute store result score $adjust calc.dabsu run data get storage dabsu:run form.MaxSpawnDelay
scoreboard players operation $adjust calc.dabsu += $original calc.dabsu
execute if score $adjust calc.dabsu matches ..0 run scoreboard players set $adjust calc.dabsu 1
execute if score $adjust calc.dabsu < $hold calc.dabsu run scoreboard players operation $adjust calc.dabsu = $hold calc.dabsu
execute store result storage dabsu:run form.MaxSpawnDelay short 1 run scoreboard players get $adjust calc.dabsu

execute store result score $original calc.dabsu run data get storage dabsu:run spawner.RequiredPlayerRange
execute store result score $adjust calc.dabsu run data get storage dabsu:run form.RequiredPlayerRange
scoreboard players operation $adjust calc.dabsu += $original calc.dabsu
execute store result storage dabsu:run form.RequiredPlayerRange short 1 run scoreboard players get $adjust calc.dabsu

execute store result score $original calc.dabsu run data get storage dabsu:run spawner.SpawnCount
execute store result score $adjust calc.dabsu run data get storage dabsu:run form.SpawnCount
scoreboard players operation $adjust calc.dabsu += $original calc.dabsu
execute if score $adjust calc.dabsu matches ..0 run scoreboard players set $adjust calc.dabsu 1
execute store result storage dabsu:run form.SpawnCount short 1 run scoreboard players get $adjust calc.dabsu

data modify block ~ ~ ~ {} merge from storage dabsu:run form

function dabsu:z_private/modify/property_change