function dabsu:z_private/text/name/ctrl_node
playsound ui.button.click master @s ~ ~ ~ 1 2 1
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=#dabsu:quick_display,tag=dabsu.ctrl] if score @s uid.dabsu = #this uid.dabsu run function dabsu:z_priq/gui/player/highlight/highlight_self