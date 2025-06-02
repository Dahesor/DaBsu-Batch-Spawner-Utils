function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/potential

#Get Element
data modify storage dabsu:run spawner set value {SpawnPotentials:[]}
data modify storage dabsu:run temp2 set value {type:-1}
execute store result storage dabsu:run temp2.type int 1 run scoreboard players get $SelectedType selected.dabsu
function dabsu:z_private/mod/__get_type with storage dabsu:run temp2

function dabsu:z_private/wand/quickedit/funcs/__get_element with storage dabsu:run index

#Weight
data modify storage dabsu:run dialog.dialog.inputs[0].initial set from storage dabsu:run element.weight

#entity
data modify storage dabsu:run nbt_to_string.input set from storage dabsu:run element.data.entity
function dabsu:z_private/mod/nbt_to_string/get
data modify storage dabsu:run dialog.dialog.inputs[1].initial set from storage dabsu:run nbt_to_string.output

#loot table
execute if data storage dabsu:run element.data.equipment run function dabsu:z_private_d/batch/edit_page/samepot/get_equipment

#Links
data modify storage dabsu:run dialog.dialog.actions[1].action.template set value "trigger trigger.dabsu set 1222$(none)"
data modify storage dabsu:run dialog.dialog.actions[0] set value {label:"",tooltip:"Place Holder",width:110}
#Edit
data modify storage dabsu:run run set value {cmd_pre:""}
data modify storage dabsu:run run.cmd_pre set value 'function dabsu:z_private_d/batch/link/element/modify {form:{weight:$(weight),entity:"$(entity)",equipment:"$(loot_table)",index:'
data modify storage dabsu:run run.index set from storage dabsu:run index.index
function dabsu:z_private/wand/quickedit/funcs/__get_index with storage dabsu:run run

data modify storage dabsu:run dialog.dialog.actions[3].action.template set from storage dabsu:run run.cmd

function dabsu:z_private_d/uid/get
data modify storage dabsu:user data[0].editing.index set from storage dabsu:run index.index

data modify storage dabsu:run dialog.dialog.actions[-3].action.template set value "trigger trigger.dabsu set 1230$(none)"

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog