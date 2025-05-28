execute if score #ctrl_start calc.dabsu matches 1 run return run function dabsu:z_priq/gui/util/prange_ctrl
scoreboard players set #hover calc.dabsu 2
scoreboard players set @s input.dabsu 2
data merge entity @s {block_state:{Name:"lime_concrete"},Glowing:1b}
return 2