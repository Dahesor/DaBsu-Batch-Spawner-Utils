scoreboard players reset @s ctrl.dabsu
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=#dabsu:quick_display,tag=dabsu.ctrl_selected] if score @s uid.dabsu = #this uid.dabsu run function dabsu:z_priq/gui/util/ctrl_finish