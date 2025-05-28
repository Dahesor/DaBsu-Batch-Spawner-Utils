dialog clear @s

$data modify storage dabsu:run form set value $(form)

execute store result storage dabsu:run form.SpawnCount short 1 run data get storage dabsu:run form.SpawnCount
execute store result storage dabsu:run form.SpawnRange short 1 run data get storage dabsu:run form.SpawnRange
execute store result storage dabsu:run form.RequiredPlayerRange short 1 run data get storage dabsu:run form.RequiredPlayerRange
execute store result storage dabsu:run form.MinSpawnDelay short 1 run data get storage dabsu:run form.MinSpawnDelay
execute store result storage dabsu:run form.MaxSpawnDelay short 1 run data get storage dabsu:run form.MaxSpawnDelay
execute store result storage dabsu:run form.MaxNearbyEntities short 1 run data get storage dabsu:run form.MaxNearbyEntities

execute store result score #max calc.dabsu run data get storage dabsu:run form.MaxSpawnDelay
execute store result score #min calc.dabsu run data get storage dabsu:run form.MinSpawnDelay

execute if score #min calc.dabsu matches ..0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMinSpawnDelay < 0",\
    "\n - §cMinSpawnDelay: ",{nbt:"form.MinSpawnDelay",storage:"dabsu:run",color:"aqua"}\
]

execute if score #max calc.dabsu matches ..0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMaxSpawnDelay < 0",\
    "\n - §cMaxSpawnDelay: ",{nbt:"form.MaxSpawnDelay",storage:"dabsu:run",color:"aqua"}\
]

data modify storage dabsu:run run_custom set value {}
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/new_property"
data modify storage dabsu:run run_custom.args set value {data:{}}
data modify storage dabsu:run run_custom.args.data set from storage dabsu:run form

data modify storage dabsu:run type.list set value []
data modify storage dabsu:run type.list append from entity @n[type=marker,limit=1,distance=..0.1,tag=dabsu.marker] data.type
function dabsu:z_priq/edit/que_api