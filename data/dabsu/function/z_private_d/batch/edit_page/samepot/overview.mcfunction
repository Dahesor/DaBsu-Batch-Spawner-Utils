function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/select_potential

scoreboard players set @s waiting.dabsu 2
scoreboard players enable @s input.dabsu

#Get Potential
data modify storage dabsu:run spawner set value {SpawnPotentials:[]}
data modify storage dabsu:run temp2 set value {type:-1}
execute store result storage dabsu:run temp2.type int 1 run scoreboard players get $SelectedType selected.dabsu
function dabsu:z_private/mod/__get_type with storage dabsu:run temp2

scoreboard players set #index calc.dabsu -1
execute if data storage dabsu:run spawner.SpawnPotentials[0] run function dabsu:z_private_d/batch/initials/pots/start

data modify storage dabsu:run dialog.dialog.actions[0].action.command set value "/trigger trigger.dabsu set 1221"
data modify storage dabsu:run dialog.dialog.actions[1].action.command set value "/trigger trigger.dabsu set 1211"
data modify storage dabsu:run dialog.dialog.actions[2].action.command set value "/trigger trigger.dabsu set 1212"
data modify storage dabsu:run dialog.dialog.actions[-1].action.command set value "/trigger trigger.dabsu set 1220"


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog