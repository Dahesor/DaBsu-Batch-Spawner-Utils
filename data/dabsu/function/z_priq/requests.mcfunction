function dabsu:z_private_d/uid/get
data modify storage dabsu:run run set from storage dabsu:user data[0].editing

#Other
execute if score #trigger trigger.dabsu matches 103 run return run function dabsu:z_priq/analysis/locate with storage dabsu:run run
execute if score #trigger trigger.dabsu matches 198 run return run function dabsu:z_priq/actions/analyze_clear

#Need Locations
execute if score #trigger trigger.dabsu matches 101 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/property"}
execute if score #trigger trigger.dabsu matches 102 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/overview_potential"}
#execute if score #trigger trigger.dabsu matches 201.. run return run function dabsu:z_private/wand/quickedit/funcs/edit_page
#execute if score #trigger trigger.dabsu matches 104 run data modify storage dabsu:run run.cmd set value "select"
#execute if score #trigger trigger.dabsu matches 190 run data modify storage dabsu:run run.cmd set value "all_lights"
#execute if score #trigger trigger.dabsu matches 199 run data modify storage dabsu:run run.cmd set value "new_potential"

data modify storage dabsu:run proceed merge from storage dabsu:run run
function dabsu:z_priq/edit/exe with storage dabsu:run proceed