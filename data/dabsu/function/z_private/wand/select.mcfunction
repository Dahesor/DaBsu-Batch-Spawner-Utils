execute as @e[type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_private/select/add_self
execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 1.6 0.5
function dabsu:z_private/text/name/selected