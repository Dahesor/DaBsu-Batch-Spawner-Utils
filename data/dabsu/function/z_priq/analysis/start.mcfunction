#return run setblock ~ ~1 ~ glass

execute unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity.id run return fail

data modify storage dabsu:run run set value {entity:{}}
data modify block ~ ~ ~ SpawnData set from storage dabsu:run run
tag @s add dabsu.analyzing
data modify storage dabsu:run data set from entity @s data
data modify storage dabsu:run spawner set from storage dabsu:run data.spawner

scoreboard players set !sanalyze calc.dabsu 1

data modify storage dabsu:run spawner merge value {MinSpawnDelay:1s,MaxSpawnDelay:1s,RequiredPlayerRange:-10s,Delay:1s,MaxNearbyEntities:100s,SpawnCount:100s,SpawnData:{}}

execute store result score @s uid.dabsu run data get storage dabsu:user data[0].uid

data modify storage dabsu:run run set value {}
data modify storage dabsu:run templist set value []
function dabsu:z_priq/analysis/take_ids
data modify storage dabsu:run spawner.SpawnPotentials set from storage dabsu:run templist

scoreboard players set @s trigger.dabsu 100

data modify block ~ ~ ~ {} merge from storage dabsu:run spawner