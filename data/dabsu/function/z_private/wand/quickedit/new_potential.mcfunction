function dabsu:z_private_d/templates/potential

data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§a New Potential..."}
data modify storage dabsu:run dialog.dialog.actions[2].label.translate set value "gui.done"

#Edit
data modify storage dabsu:run run.cmd set value 'parse/add_potential {form:{weight:$(weight),entity:$(entity),loot_table:"$(loot_table)"}}'
function dabsu:z_private_d/lines/cmd/quick_run with storage dabsu:run run
data modify storage dabsu:run dialog.dialog.actions[3].on_submit.template set from storage dabsu:run final
data remove storage dabsu:run dialog.dialog.actions[-1]

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog