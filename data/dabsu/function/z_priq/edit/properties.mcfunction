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

execute if score #max calc.dabsu < #min calc.dabsu run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMaxSpawnDelay < MinSpawnDelay",\
    "\n - §cMaxSpawnDelay: ",{nbt:"form.MaxSpawnDelay",storage:"dabsu:run",color:"aqua"},\
    "\n - §cMinSpawnDelay: ",{nbt:"form.MinSpawnDelay",storage:"dabsu:run",color:"aqua"}\
]

execute if score #min calc.dabsu matches ..0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMinSpawnDelay < 0",\
    "\n - §cMinSpawnDelay: ",{nbt:"form.MinSpawnDelay",storage:"dabsu:run",color:"aqua"}\
]

execute if score #max calc.dabsu matches ..0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMaxSpawnDelay < 0",\
    "\n - §cMaxSpawnDelay: ",{nbt:"form.MaxSpawnDelay",storage:"dabsu:run",color:"aqua"}\
]

execute store result score #max calc.dabsu run data get storage dabsu:run form.MaxNearbyEntities

tellraw @s ["",{text:"[DaBsu] Edited ->",color:"green"},\
    ["\n - SpawnCount: ",{nbt:"form.SpawnCount",storage:"dabsu:run",color:"aqua"}],\
    ["\n - SpawnRange: ",{nbt:"form.SpawnRange",storage:"dabsu:run",color:"aqua"}],\
    ["\n - RequiredPlayerRange: ",{nbt:"form.RequiredPlayerRange",storage:"dabsu:run",color:"aqua"}],\
    ["\n - MinSpawnDelay: ",{nbt:"form.MinSpawnDelay",storage:"dabsu:run",color:"aqua"}],\
    ["\n - MaxSpawnDelay: ",{nbt:"form.MaxSpawnDelay",storage:"dabsu:run",color:"aqua"}],\
    ["\n - MaxNearbyEntities: ",{nbt:"form.MaxNearbyEntities",storage:"dabsu:run",color:"aqua"}]\
]

data modify block ~ ~ ~ {} merge from storage dabsu:run form
execute as @e[type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_private/modify/update_self