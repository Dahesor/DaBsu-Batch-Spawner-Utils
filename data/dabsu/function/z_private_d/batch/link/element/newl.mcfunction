$data modify storage dabsu:run form set value $(form)
dialog clear @s

data modify storage dnt:ram in set value []
data modify storage dnt:ram in append from storage dabsu:run form.data.entity
function dnt:remove_newline
data modify storage dabsu:run form.data.entity set from storage dnt:ram out

function dabsu:z_private_d/batch/read/new_element_input with storage dabsu:run form.data

execute unless data storage dabsu:run form.data.entity.id run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMissing Entity id",\
]

#loot_table
execute unless data storage dabsu:run form.data.equipment.loot_table run data remove storage dabsu:run form.data.equipment

#light
execute unless data storage dabsu:run form{use_light:1} run data remove storage dabsu:run form.data.custom_spawn_rules

#send edits
data modify storage dabsu:run run_custom.args set value {form:{}}
data modify storage dabsu:run run_custom.args.form set from storage dabsu:run form
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/element/append"

function dabsu:modify/use