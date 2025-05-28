# Get User Storage
function dabsu:z_private_d/uid/get
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit] if score @s uid.dabsu = #this uid.dabsu run kill


execute as @e[tag=dabsu.quick_edit,type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_priq/selected/remove_marker

execute align xyz run kill @e[type=block_display,tag=dabsu.displayer,distance=..0.1]
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 0.75 1
function dabsu:z_private/text/name/quick_deselect
tag @s remove dabsu.quick_edit