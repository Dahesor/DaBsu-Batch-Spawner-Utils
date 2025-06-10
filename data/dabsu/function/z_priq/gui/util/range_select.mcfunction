execute if score #ctrl_start calc.dabsu matches 1 run return run function dabsu:z_priq/gui/util/range_ctrl
scoreboard players set #hover calc.dabsu 1
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=block_display,tag=dabsu.ctrl,tag=dabsu.gui_edit.sr,tag=dabsu.ctrl.marker,distance=0..] if score @s uid.dabsu = #this uid.dabsu run function dabsu:z_priq/gui/util/hightlight_marker
return 1