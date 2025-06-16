scoreboard players operation #trigger trigger.dabsu = @s trigger.dabsu
scoreboard players set @s trigger.dabsu 0

execute if score @s opcd.dabsu matches 1.. run return run return fail
scoreboard players set @s opcd.dabsu 3

execute if score #trigger trigger.dabsu matches 1 run return run dialog clear @s
execute if score #trigger trigger.dabsu matches 2 run return run function dabsu:z_private/wand/from_quick_action

execute if score #trigger trigger.dabsu matches 77 run return run function dabsu:z_private/mod/hibernate/schedule

execute if score #trigger trigger.dabsu matches 100..300 run return run function dabsu:z_priq/requests
execute if score #trigger trigger.dabsu matches 1000..1100 run return run function dabsu:z_private_d/batch/dispatch/homepage
execute if score #trigger trigger.dabsu matches 1101..1200 run return run function dabsu:z_private_d/batch/dispatch/selection

execute if score #trigger trigger.dabsu matches 1201..1300 run return run function dabsu:z_private_d/batch/dispatch/edit

execute if score #trigger trigger.dabsu matches 1301..1400 run return run function dabsu:z_private_d/batch/dispatch/settings
execute if score #trigger trigger.dabsu matches 1401..1500 run return run function dabsu:z_private_d/lines/options/change