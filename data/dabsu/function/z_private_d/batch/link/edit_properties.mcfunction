dialog clear @s
$data modify storage dabsu:run form set value $(form)

scoreboard players set #validate calc.dabsu 0
execute store result score #validate calc.dabsu run function dabsu:z_private_d/batch/link/__edit_properties with storage dabsu:run form
execute if score #validate calc.dabsu matches 0 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §c ? ∌ short",\
]
execute unless score #validate calc.dabsu matches -200 run return fail

execute if data storage dabsu:run form{MaxNearbyEntities:""} run data remove storage dabsu:run run.MaxNearbyEntities
execute if data storage dabsu:run form{MaxSpawnDelay:""} run data remove storage dabsu:run run.MaxSpawnDelay
execute if data storage dabsu:run form{MinSpawnDelay:""} run data remove storage dabsu:run run.MinSpawnDelay
execute if data storage dabsu:run form{RequiredPlayerRange:""} run data remove storage dabsu:run run.RequiredPlayerRange
execute if data storage dabsu:run form{SpawnCount:""} run data remove storage dabsu:run run.SpawnCount
execute if data storage dabsu:run form{SpawnRange:""} run data remove storage dabsu:run run.SpawnRange
data modify storage dabsu:run run.index set from storage dabsu:run form.index
data modify storage dabsu:run form set from storage dabsu:run run

execute store result score #validate calc.dabsu run data get storage dabsu:run form
execute unless score #validate calc.dabsu matches 1.. run return fail

data modify storage dabsu:run run set value {form:{}}
data modify storage dabsu:run run.form set from storage dabsu:run form

function dabsu:z_private/modify/__new_property_task with storage dabsu:run run
