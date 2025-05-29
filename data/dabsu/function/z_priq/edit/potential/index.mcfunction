dialog clear @s
data modify storage dabsu:run form set from storage dabsu:user data[0].form

execute unless data storage dabsu:run form.entity.id run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMissing Entity id",\
]

#loot_table
data modify storage dabsu:run form.data set value {entity:{id:"pig"}}
execute if data storage dabsu:run form.equipment.loot_table run data modify storage dabsu:run form.data.equipment set from storage dabsu:run form.equipment
execute unless data storage dabsu:run form.equipment.loot_table run data modify storage dabsu:run form.use set value -1
data remove storage dabsu:run form.equipment

#entity
data modify storage dabsu:run form.data.entity set from storage dabsu:run form.entity
data remove storage dabsu:run form.entity

#Index
data modify storage dabsu:run form.index set from storage dabsu:user data[0].editing.index
data modify storage dabsu:run form.form set from storage dabsu:run form

#Edit
execute as @e[type=marker,distance=..0.2,limit=1,tag=dabsu.marker] run function dabsu:z_private/modify/element/this with storage dabsu:run form