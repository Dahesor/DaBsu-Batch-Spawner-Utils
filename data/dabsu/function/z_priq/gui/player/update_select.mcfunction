execute if entity @s[tag=dabsu.ctrl_selected] run return fail
scoreboard players remove @s input.dabsu 1
execute unless score @s input.dabsu matches ..0 run return 1

execute if entity @s[tag=dabsu.ctrl.range] run return run function dabsu:z_priq/gui/util/range_deselect