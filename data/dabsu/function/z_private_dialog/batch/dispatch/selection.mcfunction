execute if score #trigger trigger.dabsu matches 1131 run function dabsu:select/same_type/set
execute if score #trigger trigger.dabsu matches 1132 run function dabsu:select/same_type/add
execute if score #trigger trigger.dabsu matches 1141..1142 run return run function dabsu:select/all
execute if score #trigger trigger.dabsu matches 1101 run function dabsu:select/pos_1
execute if score #trigger trigger.dabsu matches 1102 run function dabsu:select/pos_2
execute if score #trigger trigger.dabsu matches 1101..1102 run return run function dabsu:z_private_dialog/batch/select

execute if score #trigger trigger.dabsu matches 1103 run function dabsu:select/pos_1
execute if score #trigger trigger.dabsu matches 1104 run function dabsu:select/pos_2
execute if score #trigger trigger.dabsu matches 1103..1104 run return run function dabsu:z_private_dialog/batch/modify_select