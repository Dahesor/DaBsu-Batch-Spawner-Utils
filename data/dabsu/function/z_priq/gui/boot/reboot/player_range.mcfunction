execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit,tag=dabsu.gui_edit.pr] if score @s uid.dabsu = #this uid.dabsu run kill

execute store result score #side calc.dabsu run data get storage dabsu:run spawner.RequiredPlayerRange
execute if score #side calc.dabsu matches 1..96 run function dabsu:z_priq/gui/boot/player_range
execute if score #side calc.dabsu matches 1..96 positioned ~-0.15 ~-0.15 ~-0.15 run function dabsu:z_priq/gui/boot/player_range_ctrl