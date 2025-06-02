function dabsu:z_private_d/uid/get
data modify storage dabsu:run run set from storage dabsu:user data[0].editing

#Other
execute if score #trigger trigger.dabsu matches 103 run return run function dabsu:z_priq/analysis/locate with storage dabsu:run run
execute if score #trigger trigger.dabsu matches 198 run return run function dabsu:z_priq/actions/analyze_clear
execute if score #trigger trigger.dabsu matches 199 run dialog clear @s
execute if score #trigger trigger.dabsu matches 199 run return run function dabsu:z_priq/selected/remote_uncall

#Need Locations
execute if score #trigger trigger.dabsu matches 101 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/property"}
execute if score #trigger trigger.dabsu matches 102 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/overview_potential"}
execute if score #trigger trigger.dabsu matches 104 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/new_element"}
execute if score #trigger trigger.dabsu matches 105 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/this_light"}
execute if score #trigger trigger.dabsu matches 106 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/confirm/del_entry"}
execute if score #trigger trigger.dabsu matches 107 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/edit/potential/reciver/del"}
execute if score #trigger trigger.dabsu matches 110 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/common_home"}
execute if score #trigger trigger.dabsu matches 111 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/attributes"}
execute if score #trigger trigger.dabsu matches 112 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/equipment_overview"}

execute if score #trigger trigger.dabsu matches 120..129 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/edit/equipment/copy_home"}
execute if score #trigger trigger.dabsu matches 130..139 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/select_item"}

execute if score #trigger trigger.dabsu matches 180 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/history/sync"}
execute if score #trigger trigger.dabsu matches 181 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/history/revert"}
execute if score #trigger trigger.dabsu matches 182 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/edit/history/sync"}
execute if score #trigger trigger.dabsu matches 183 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/edit/history/revert"}

execute if score #trigger trigger.dabsu matches 190 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/all_light"}
execute if score #trigger trigger.dabsu matches 191 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/merge_all"}
execute if score #trigger trigger.dabsu matches 192 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/full_nbt"}

data modify storage dabsu:run proceed merge from storage dabsu:run run
function dabsu:z_priq/edit/exe with storage dabsu:run proceed