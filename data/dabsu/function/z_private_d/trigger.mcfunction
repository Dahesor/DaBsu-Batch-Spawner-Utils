scoreboard players operation #trigger trigger.dabsu = @s trigger.dabsu
scoreboard players set @s trigger.dabsu 0

execute if score #trigger trigger.dabsu matches 100..300 run return run function dabsu:z_private/wand/quickedit/requests
execute if score #trigger trigger.dabsu matches 1000..1100 run return run function dabsu:z_private_d/batch/dispatch/homepage
execute if score #trigger trigger.dabsu matches 1101..1200 run return run function dabsu:z_private_d/batch/dispatch/selection

execute if score #trigger trigger.dabsu matches 1201..1300 run return run function dabsu:z_private_d/batch/dispatch/edit