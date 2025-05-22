function dabsu:z_private_dialog/uid/get
data modify storage dabsu:run run set from storage dabsu:user data[0].editing

execute if score #trigger trigger.dabsu matches 201.. run return run function dabsu:z_private/wand/quickedit/funcs/edit_page

execute if score #trigger trigger.dabsu matches 101 run data modify storage dabsu:run run.cmd set value "properties"
execute if score #trigger trigger.dabsu matches 102 run data modify storage dabsu:run run.cmd set value "all_potentials"
execute if score #trigger trigger.dabsu matches 103 run data modify storage dabsu:run run.cmd set value "unregister"
execute if score #trigger trigger.dabsu matches 104 run data modify storage dabsu:run run.cmd set value "select"
execute if score #trigger trigger.dabsu matches 190 run data modify storage dabsu:run run.cmd set value "all_lights"

execute if score #trigger trigger.dabsu matches 199 run data modify storage dabsu:run run.cmd set value "new_potential"
function dabsu:z_private_dialog/lines/cmd/execute_quickedit with storage dabsu:run run