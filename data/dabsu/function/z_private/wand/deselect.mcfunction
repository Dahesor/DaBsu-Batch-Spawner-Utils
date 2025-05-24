execute as @e[type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_private/select/remove_self
execute align xyz run kill @e[type=block_display,tag=dabsu.displayer,distance=..0.1]
execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 1.2 0.5
item modify entity @s weapon dabsu:change_name
function dabsu:z_private/text/name/deselected