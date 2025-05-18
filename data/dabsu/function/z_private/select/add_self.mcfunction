execute if score @s selected.dabsu matches 1 run return fail
data modify storage dabsu:run data set from entity @s data

function dabsu:z_private/select/add_self/dimension_main
function dabsu:z_private/select/add_self/chunk_main

execute unless function dabsu:z_private/mod/get_this run return fail
data modify storage dabsu:run Selected[0].Chunks[0].Objects append from storage dabsu:run Dimensions[0].Chunks[0].Objects[0]
scoreboard players set @s selected.dabsu 1

execute unless score %mute calc.dabsu matches 1.. if entity @a[distance=..20] align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__selected
scoreboard players add %select_count calc.dabsu 1
return 1