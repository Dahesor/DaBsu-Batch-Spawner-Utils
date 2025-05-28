execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit,tag=dabsu.gui_edit.sc,tag=dabsu.ctrl.count] if score @s uid.dabsu = #this uid.dabsu run kill

scoreboard players set #exist calc.dabsu 0
execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit,tag=dabsu.gui_edit.sc,tag=!dabsu.ctrl.count] if score @s uid.dabsu = #this uid.dabsu run function dabsu:z_priq/gui/boot/bar/update

execute unless score #exist calc.dabsu matches 1 positioned ~-0.125 ~0.5 ~-0.125 run function dabsu:z_priq/gui/boot/spawn_count
execute positioned ~ ~-1.35 ~ run function dabsu:z_priq/gui/boot/spawn_count_ctrl