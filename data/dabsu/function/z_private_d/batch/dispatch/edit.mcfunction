execute if score #trigger trigger.dabsu matches 1201 run return run function dabsu:z_private_d/batch/edit_page/set_delay
execute if score #trigger trigger.dabsu matches 1202 run return run function dabsu:z_private_d/batch/edit_page/set_properties
execute if score #trigger trigger.dabsu matches 1203 if score $SelectedType selected.dabsu matches 0.. run return run function dabsu:z_private_d/batch/edit_page/samepot/overview
execute if score #trigger trigger.dabsu matches 1203 run return run function dabsu:z_private_d/batch/edit_page/muti_potential
execute if score #trigger trigger.dabsu matches 1204 run return run function dabsu:z_private_d/batch/edit_page/any_command
execute if score #trigger trigger.dabsu matches 1205 run return run function dabsu:z_private_d/batch/link/empty_selection

execute if score #trigger trigger.dabsu matches 1210 run return run function dabsu:z_private_d/batch/edit_page/multipot/light
execute if score #trigger trigger.dabsu matches 1211 run return run function dabsu:z_private_d/batch/edit_page/multipot/merge
execute if score #trigger trigger.dabsu matches 1212 run return run function dabsu:z_private_d/batch/edit_page/multipot/rewrite

execute if score #trigger trigger.dabsu matches 1220 run return run function dabsu:z_private_d/batch/edit_page/samepot/new
execute if score #trigger trigger.dabsu matches 1221 run return run function dabsu:z_private_d/batch/edit_page/samepot/lighting

execute if score #trigger trigger.dabsu matches 1222 run return run function dabsu:z_private_d/batch/edit_page/samepot/ele_light


execute if score #trigger trigger.dabsu matches 1230 run return run function dabsu:z_private_d/batch/edit_page/samepot/confirm_del
execute if score #trigger trigger.dabsu matches 1231 run return run function dabsu:z_private_d/batch/link/element/del_this