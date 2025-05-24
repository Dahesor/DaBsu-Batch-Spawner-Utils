execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy
function dabsu:z_private_d/templates/edit/multi_merge

data modify storage dabsu:run dialog.dialog.body set value {type:"plain_message",contents:"This replaces the §bSpawnPotentials §rof all selected spawners with your input",width:400}
data remove storage dabsu:run dialog.dialog.inputs[0]
data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§r Replacing §bSpawnPotentials §rNBT..."}
data modify storage dabsu:run dialog.dialog.inputs[0].initial set value '[]'
data modify storage dabsu:run dialog.dialog.inputs[0].key set value 'tag'
data modify storage dabsu:run dialog.dialog.inputs[0].label set value '§bSNBT'
data modify storage dabsu:run dialog.dialog.inputs[0].multiline.height set value 180
data modify storage dabsu:run dialog.dialog.actions[0].on_submit.template set value 'function dabsu:z_private_d/batch/link/pots/rewrite_all {form:{tag:$(tag)}}'

execute unless score $SelectedType selected.dabsu matches ..-1 run function dabsu:z_private_d/batch/edit_page/multipot/get_initial


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog