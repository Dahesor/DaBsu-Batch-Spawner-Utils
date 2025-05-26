execute as @e[tag=dabsu.quick_edit,type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_priq/selected/remove_marker

execute align xyz run kill @e[type=block_display,tag=dabsu.displayer]
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 0.75 1
function dabsu:z_private/text/name/quick_deselect
tag @s remove dabsu.quick_edit