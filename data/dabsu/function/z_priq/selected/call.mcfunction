execute if entity @e[tag=dabsu.quick_edit,type=marker,tag=dabsu.marker,distance=..0.1] run return run function dabsu:z_priq/selected/uncall

# Get User Storage
function dabsu:z_private_d/uid/get

#Manage Marker
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=marker,tag=dabsu.marker,tag=dabsu.quick_edit] if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/selected/remove_marker
execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit] if score @s uid.dabsu = #this uid.dabsu run kill
execute as @e[type=marker,tag=dabsu.marker,distance=..0.1,limit=1] run function dabsu:z_priq/selected/marker_self

#Save position
data modify storage dabsu:user data[0].editing merge from storage dabsu:run data.pos
scoreboard players set $changed_target calc.dabsu 0
execute store result score $changed_target calc.dabsu run data modify storage dabsu:user data[0].editing.uuid set from storage dabsu:run data.UUID
execute unless score $changed_target calc.dabsu matches 0 run data modify storage dabsu:user data[0].editing.history set value []
execute unless score $changed_target calc.dabsu matches 0 run data modify storage dabsu:user data[0].editing.history append from storage dabsu:run data.type
data modify storage dabsu:user data[0].target set from storage dabsu:run data
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1.12 1
tag @s add dabsu.quick_edit
scoreboard players reset $changed_target calc.dabsu

#Visuals
execute align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__modifying
function dabsu:z_private/text/name/quick_select