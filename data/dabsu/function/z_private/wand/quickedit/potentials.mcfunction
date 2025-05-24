function dabsu:z_private_d/templates/potential

function dabsu:z_private/wand/quickedit/funcs/fix_spawner
data modify storage dabsu:run spawner set from block ~ ~ ~
function dabsu:z_private/wand/quickedit/funcs/__get_element with storage dabsu:run index

#Weight
data modify storage dabsu:run dialog.dialog.inputs[0].initial set from storage dabsu:run element.weight

#entity
data modify storage dabsu:run nbt_to_string.input set from storage dabsu:run element.data.entity
function dabsu:z_private/mod/nbt_to_string/get
data modify storage dabsu:run dialog.dialog.inputs[1].initial set from storage dabsu:run nbt_to_string.output

#loot table
execute if data storage dabsu:run element.data.equipment run function dabsu:z_private_d/batch/edit_page/samepot/get_equipment

#Edit
data modify storage dabsu:run run merge value {cmd_pre:""}
data modify storage dabsu:run run.cmd_pre set value 'parse/this_potential {form:{weight:$(weight),entity:$(entity),equipment:$(loot_table),index:'
data modify storage dabsu:run run.index set from storage dabsu:run index.index
function dabsu:z_private/wand/quickedit/funcs/__get_index with storage dabsu:run run

function dabsu:z_private_d/lines/cmd/quick_run with storage dabsu:run run
data modify storage dabsu:run dialog.dialog.actions[3].on_submit.template set from storage dabsu:run final


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog