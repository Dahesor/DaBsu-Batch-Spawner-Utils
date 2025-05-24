data modify storage dabsu:run run set value {MaxNearbyEntities:0s,MaxSpawnDelay:0s,MinSpawnDelay:0s,RequiredPlayerRange:0s,SpawnCount:0s,SpawnRange:0s}

scoreboard players set #validate2 calc.dabsu 0
$execute unless data storage dabsu:run form{MaxNearbyEntities:""} store result score #validate2 calc.dabsu run function dabsu:z_private_d/batch/link/__set_number {num:"$(MaxNearbyEntities)"}
execute unless data storage dabsu:run form{MaxNearbyEntities:""} if score #validate2 calc.dabsu matches 0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §c MaxNearbyEntities ∌ short",\
]
execute unless data storage dabsu:run form{MaxNearbyEntities:""} store result storage dabsu:run run.MaxNearbyEntities short 1 run scoreboard players get #to_num calc.dabsu

scoreboard players set #validate2 calc.dabsu 0
$execute unless data storage dabsu:run form{MaxSpawnDelay:""} store result score #validate2 calc.dabsu run function dabsu:z_private_d/batch/link/__set_number {num:"$(MaxSpawnDelay)"}
execute unless data storage dabsu:run form{MaxSpawnDelay:""} if score #validate2 calc.dabsu matches 0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §c MaxSpawnDelay ∌ short",\
]
execute unless data storage dabsu:run form{MaxSpawnDelay:""} store result storage dabsu:run run.MaxSpawnDelay short 1 run scoreboard players get #to_num calc.dabsu

scoreboard players set #validate2 calc.dabsu 0
$execute unless data storage dabsu:run form{MinSpawnDelay:""} store result score #validate2 calc.dabsu run function dabsu:z_private_d/batch/link/__set_number {num:"$(MinSpawnDelay)"}
execute unless data storage dabsu:run form{MinSpawnDelay:""} if score #validate2 calc.dabsu matches 0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §c MinSpawnDelay ∌ short",\
]
execute unless data storage dabsu:run form{MinSpawnDelay:""} store result storage dabsu:run run.MinSpawnDelay short 1 run scoreboard players get #to_num calc.dabsu

scoreboard players set #validate2 calc.dabsu 0
$execute unless data storage dabsu:run form{RequiredPlayerRange:""} store result score #validate2 calc.dabsu run function dabsu:z_private_d/batch/link/__set_number {num:"$(RequiredPlayerRange)"}
execute unless data storage dabsu:run form{RequiredPlayerRange:""} if score #validate2 calc.dabsu matches 0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §c RequiredPlayerRange ∌ short",\
]
execute unless data storage dabsu:run form{RequiredPlayerRange:""} store result storage dabsu:run run.RequiredPlayerRange short 1 run scoreboard players get #to_num calc.dabsu

scoreboard players set #validate2 calc.dabsu 0
$execute unless data storage dabsu:run form{SpawnCount:""} store result score #validate2 calc.dabsu run function dabsu:z_private_d/batch/link/__set_number {num:"$(SpawnCount)"}
execute unless data storage dabsu:run form{SpawnCount:""} if score #validate2 calc.dabsu matches 0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §c SpawnCount ∌ short",\
]
execute unless data storage dabsu:run form{SpawnCount:""} store result storage dabsu:run run.SpawnCount short 1 run scoreboard players get #to_num calc.dabsu

scoreboard players set #validate2 calc.dabsu 0
$execute unless data storage dabsu:run form{SpawnRange:""} store result score #validate2 calc.dabsu run function dabsu:z_private_d/batch/link/__set_number {num:"$(SpawnRange)"}
execute unless data storage dabsu:run form{SpawnRange:""} if score #validate2 calc.dabsu matches 0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §c SpawnRange ∌ short",\
]
execute unless data storage dabsu:run form{SpawnRange:""} store result storage dabsu:run run.SpawnRange short 1 run scoreboard players get #to_num calc.dabsu


return -200