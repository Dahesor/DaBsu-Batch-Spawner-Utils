$data modify storage dabsu:run form set value $(form)

execute unless data storage dabsu:run form.data.entity.id run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMissing Entity id",\
]

#loot_table
execute unless data storage dabsu:run form.data.equipment.loot_table run data remove storage dabsu:run form.data.equipment

#light
execute unless data storage dabsu:run form{use_light:1} run data remove storage dabsu:run form.data.custom_spawn_rules

#entity
data modify storage dabsu:run form.data.entity set from storage dabsu:run form.entity
data remove storage dabsu:run form.entity

#Edit
data modify storage dabsu:run run_custom.args set value {form:{}}
data modify storage dabsu:run run_custom.args.form set from storage dabsu:run form
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/element/append"

function dabsu:z_priq/selected/update/entry
data modify storage dabsu:run type.list set value []
data modify storage dabsu:run type.list append from storage dabsu:user data[0].target.type
function dabsu:z_priq/edit/que_api