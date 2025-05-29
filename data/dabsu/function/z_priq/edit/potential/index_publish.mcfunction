dialog clear @s
$data modify storage dabsu:run form set value $(form)

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

#Edit
data modify storage dabsu:run run_custom.args set value {form:{}}
data modify storage dabsu:run run_custom.args.form set from storage dabsu:run form
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/element/this"

function dabsu:z_priq/selected/update/position
data modify storage dabsu:run type.list set value []
data modify storage dabsu:run type.list append from storage dabsu:user data[0].target.type
function dabsu:z_priq/edit/que_api