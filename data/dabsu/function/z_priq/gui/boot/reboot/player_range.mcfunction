execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit,tag=dabsu.gui_edit.pr] if score @s uid.dabsu = #this uid.dabsu run kill
function dabsu:z_priq/gui/boot/player_range
execute positioned ~-0.15 ~-1.85 ~-0.15 run function dabsu:z_priq/gui/boot/player_range_ctrl