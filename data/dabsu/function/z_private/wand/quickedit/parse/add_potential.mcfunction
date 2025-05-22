$data modify storage dabsu:run form set value $(form)

execute unless data storage dabsu:run form.entity.id run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMissing Entity id",\
]

#loot_table
data modify storage dabsu:run form.data set value {entity:{id:"pig"}}
execute unless data storage dabsu:run form{loot_table:""} run data modify storage dabsu:run form.data.equipment.loot_table set from storage dabsu:run form.loot_table
data remove storage dabsu:run form.loot_table

#entity
data modify storage dabsu:run form.data.entity set from storage dabsu:run form.entity
data remove storage dabsu:run form.entity

data modify block ~ ~ ~ SpawnPotentials append from storage dabsu:run form
data modify block ~ ~ ~ SpawnData set from block ~ ~ ~ SpawnPotentials[0].data
data modify block ~ ~ ~ Delay set value 1s