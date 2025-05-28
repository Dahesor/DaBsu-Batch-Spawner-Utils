data modify storage dabsu:run data set from entity @s data
tag @s add dabsu.quick_edit
execute store result score @s uid.dabsu run data get storage dabsu:user data[0].uid
execute positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function dabsu:z_priq/gui/boot
data modify storage dabsu:run data set from entity @s data