data modify storage dabsu:run data set from entity @e[type=marker,tag=dabsu.marker,distance=..0.1,limit=1] data
function dabsu:z_private_d/uid/get
data modify storage dabsu:user data[0].editing merge from storage dabsu:run data.pos
data modify storage dabsu:user data[0].editing.uuid set from storage dabsu:run data.UUID

#playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
function dabsu:z_private_d/templates/single_home

#Header
data modify storage dabsu:run run set from storage dabsu:run data.pos
data modify storage dabsu:run run.type set from storage dabsu:run data.type
data modify storage dabsu:run run.in set from storage dabsu:run data.in
function dabsu:z_private_d/lines/spawner_top_info with storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[1].description.contents set from storage dabsu:run final
data modify storage dabsu:run dialog.dialog.body[1].item.components set from block ~ ~ ~ components

#Copy Full Data
data modify storage dabsu:run nbt_to_string.input set from block ~ ~ ~
function dabsu:z_private/mod/nbt_to_string/get
data modify storage dabsu:run dialog.dialog.actions[0].on_click.value set from storage dabsu:run nbt_to_string.output

#Copy SpawnPotentials
data modify storage dabsu:run nbt_to_string.input set from storage dabsu:run nbt_to_string.input.SpawnData
execute if data storage dabsu:run spawner.SpawnPotentials[0] run data modify storage dabsu:run nbt_to_string.input set from storage dabsu:run spawner.SpawnPotentials
function dabsu:z_private/mod/nbt_to_string/get
data modify storage dabsu:run dialog.dialog.actions[1].on_click.value set from storage dabsu:run nbt_to_string.output


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog