execute store result score #cx calc.dabsu run data get entity @s data.chunk.x
execute store result score #cz calc.dabsu run data get entity @s data.chunk.z

data modify storage dabsu:run data set from entity @s data

function dabsu:z_private/mod/get_chunk/main
function gu:generate
function dabsu:z_private/mod/del_save with storage gu:main
execute if score @s selected.dabsu matches 1 run function dabsu:z_private/mod/del_selected with storage gu:main

function dabsu:z_private/mod/coords

kill @s