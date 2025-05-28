scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute unless score @s ctrl.dabsu matches 1.. if items entity @s weapon ghast_tear[custom_data~{dabsu:{is_wand:1b}}] anchored eyes run function dabsu:z_priq/gui/player/find_ctrl
function dabsu:z_private_d/uid/get
execute if score @s ctrl.dabsu matches 1 if score @s ctrl_wait.dabsu matches 3.. anchored eyes run function dabsu:z_priq/gui/ctrl/range
execute if score @s ctrl.dabsu matches 2 if score @s ctrl_wait.dabsu matches 3.. anchored eyes run function dabsu:z_priq/gui/ctrl/p_range
execute if score @s ctrl.dabsu matches 3 if score @s ctrl_wait.dabsu matches 3.. anchored eyes run function dabsu:z_priq/gui/ctrl/count