$data modify storage dabsu:run form set value $(form)

execute unless data storage dabsu:run form.entity.id run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMissing Entity id",\
]

#loot_table
data modify storage dabsu:run form.data set value {entity:{id:"pig"}}
execute if data storage dabsu:run form.equipment.loot_table run data modify storage dabsu:run form.data.equipment set from storage dabsu:run form.equipment
data remove storage dabsu:run form.equipment

#entity
data modify storage dabsu:run form.data.entity set from storage dabsu:run form.entity
data remove storage dabsu:run form.entity

function dabsu:z_private/wand/quickedit/parse/__edit_potential with storage dabsu:run form