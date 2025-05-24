execute if score #trigger trigger.dabsu matches 1000 run return run function dabsu:z_private_d/batch/home
execute if score #trigger trigger.dabsu matches 1001 run return run function dabsu:z_private_d/batch/select
execute if score #trigger trigger.dabsu matches 1002 run return run function dabsu:z_private_d/batch/modify_select
execute if score #trigger trigger.dabsu matches 1003 run return run function dabsu:select/empty
execute if score #trigger trigger.dabsu matches 1004 unless score $SelectedType selected.dabsu matches -2147483648..2147483647 run return run function dabsu:z_private_d/batch/select
execute if score #trigger trigger.dabsu matches 1004 run return run function dabsu:z_private_d/batch/edit
execute if score #trigger trigger.dabsu matches 1006 run return run function dabsu:cart

execute if score #trigger trigger.dabsu matches 1009 run return run function dabsu:z_private_d/batch/settings/confirm_optimize
execute if score #trigger trigger.dabsu matches 1010 run return run function dabsu:modify/optimize

execute if score #trigger trigger.dabsu matches 1012 if entity @s[tag=dabsu.register] run return run tag @s remove dabsu.register
execute if score #trigger trigger.dabsu matches 1012 run return run tag @s add dabsu.register