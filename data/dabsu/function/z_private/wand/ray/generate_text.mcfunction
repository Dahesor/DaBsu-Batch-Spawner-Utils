execute unless score %devide calc.dabsu matches ..50 run return run function dabsu:z_private/wand/ray/entry/init

execute if score %remainder calc.dabsu matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_display,tag=dabsu.displayer,distance=..0.8] run kill


data modify storage dabsu:run run set value {Delay:1,MaxNearbyEntities:1,MaxSpawnDelay:1,MinSpawnDelay:1,RequiredPlayerRange:1,SpawnCount:1,SpawnRange:1,pot:0}
execute store result storage dabsu:run run.Delay int 1 run data get storage dabsu:run spawner.Delay
execute store result storage dabsu:run run.MaxNearbyEntities int 1 run data get storage dabsu:run spawner.MaxNearbyEntities
execute store result storage dabsu:run run.MaxSpawnDelay int 1 run data get storage dabsu:run spawner.MaxSpawnDelay
execute store result storage dabsu:run run.MinSpawnDelay int 1 run data get storage dabsu:run spawner.MinSpawnDelay
execute store result storage dabsu:run run.RequiredPlayerRange int 1 run data get storage dabsu:run spawner.RequiredPlayerRange
execute store result storage dabsu:run run.SpawnCount int 1 run data get storage dabsu:run spawner.SpawnCount
execute store result storage dabsu:run run.SpawnRange int 1 run data get storage dabsu:run spawner.SpawnRange
execute store result storage dabsu:run run.pot int 1 if data storage dabsu:run spawner.SpawnPotentials[]


data modify storage dabsu:run spawner set from storage dabsu:run run

data modify storage dabsu:run text set value [{text:"",color:"gray"},\
    {text:"NextSpawn: ",color:"#f48383"},{nbt:"spawner.Delay",storage:"dabsu:run",color:"gold"},"\n",\
    {text:"MinMaxD.: ",color:"white"},{nbt:"spawner.MinSpawnDelay",storage:"dabsu:run",color:"green"},",",\
        {nbt:"spawner.MaxSpawnDelay",storage:"dabsu:run",color:"aqua"},"\n",\
    {text:"SpawnCount: ",color:"white"},{nbt:"spawner.SpawnCount",storage:"dabsu:run",color:"green"},"\n",\
    {text:"SpawnRange: ",color:"white"},{nbt:"spawner.SpawnRange",storage:"dabsu:run",color:"green"},"\n",\
    {text:"MaxNearby: ",color:"white"},{nbt:"spawner.MaxNearbyEntities",storage:"dabsu:run",color:"green"},"\n",\
    {text:"PlayerRange: ",color:"white"},{nbt:"spawner.RequiredPlayerRange",storage:"dabsu:run",color:"green"},"\n",\
    {text:"Potentials: ",color:"white"},"[",{nbt:"spawner.pot",storage:"dabsu:run",color:"gray"},"]",\
]