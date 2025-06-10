execute if entity @e[tag=dabsu.quick_edit,type=marker,tag=dabsu.marker,distance=..0.1] run return run function dabsu:z_priq/selected/uncall
execute if entity @e[type=marker,tag=dabsu.marker,limit=1,distance=..0.4] run return fail

function dabsu:z_private_d/uid/get

scoreboard players operation #this uid.dabsu = @s uid.dabsu
tag @s add dabsu.quick_edit
tag @s add dabsu.trial_marker
execute as @e[type=marker,tag=dabsu.marker,tag=dabsu.quick_edit] if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/selected/remove_marker
execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit] if score @s uid.dabsu = #this uid.dabsu run kill
execute as @e[type=block_display,tag=dabsu.analyz_marker] if score @s uid.dabsu = #this uid.dabsu run kill
execute summon marker run function dabsu:z_priq/gui/trial/trial_marker

data modify storage dabsu:user data[0].editing set from storage dabsu:run data.pos
data modify storage dabsu:user data[0].target set from storage dabsu:run data
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.12 1
execute align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__modifying
function dabsu:z_private/text/name/quick_select