function dabsu:z_private/text/get
function dabsu:z_private_d/templates/potential
function dabsu:z_private_d/uid/get
data modify storage dabsu:user data[0].editing.index set from storage dabsu:run index.index

#Get Element
data modify storage dabsu:run spawner set from block ~ ~ ~
function dabsu:z_private/wand/quickedit/funcs/__get_element with storage dabsu:run index

#Weight Initial
data modify storage dabsu:run dialog.dialog.inputs[0].initial set from storage dabsu:run element.weight

#Entity Initial
data modify storage dabsu:run nbt_to_string.input set from storage dabsu:run element.data.entity
function dabsu:z_private/mod/nbt_to_string/get
data modify storage dabsu:run dialog.dialog.inputs[1].initial set from storage dabsu:run nbt_to_string.output

#loot table
execute if data storage dabsu:run element.data.equipment run function dabsu:z_private_d/batch/edit_page/samepot/get_equipment

#Links
data modify storage dabsu:run dialog.dialog.actions[1].action.template set value "trigger trigger.dabsu set 105$(none)"
data modify storage dabsu:run dialog.dialog.actions[0].action.template set value "trigger trigger.dabsu set 110$(none)"

#Edit Itself
data modify storage dabsu:run dialog.dialog.actions[3].label set value {text:"Edit Itself",color:"green"}
data modify storage dabsu:run dialog.dialog.actions[3].action.template set value 'function dabsu:z_priq/edit/potential/reciver/index {form:{weight:$(weight),entity:"$(entity)",equipment:"$(loot_table)"}}'
data modify storage dabsu:run dialog.dialog.actions[2].action.template set value "trigger trigger.dabsu set 106$(none)"

#Lang
data modify storage dabsu:run dialog.dialog.actions[3].label.text set from storage dabsu:run lang.this.menu_property_1

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog

