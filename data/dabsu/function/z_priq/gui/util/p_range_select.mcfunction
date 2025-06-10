execute if score #ctrl_start calc.dabsu matches 1 run return run function dabsu:z_priq/gui/util/prange_ctrl
scoreboard players set #hover calc.dabsu 2
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=block_display,tag=dabsu.ctrl,tag=dabsu.gui_edit.pr,tag=dabsu.ctrl.marker,distance=0..] if score @s uid.dabsu = #this uid.dabsu run function dabsu:z_priq/gui/util/hightlight_marker
return 2