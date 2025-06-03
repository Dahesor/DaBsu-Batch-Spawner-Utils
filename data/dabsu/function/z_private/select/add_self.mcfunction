execute if score @s selected.dabsu matches 1 run return fail
data modify storage dabsu:run data set from entity @s data

execute store result score $ThisType selected.dabsu run data get storage dabsu:run data.type
function dabsu:z_private/select/if_same_type

function dabsu:z_private/select/add_self/dimension_main
function dabsu:z_private/select/add_self/chunk_main

execute unless function dabsu:z_private/mod/get_this run return fail
data modify storage dabsu:run Selected[0].Chunks[0].Objects append from storage dabsu:run Dimensions[0].Chunks[0].Objects[0]
scoreboard players set @s selected.dabsu 1


scoreboard players add %select_count calc.dabsu 1
return 1