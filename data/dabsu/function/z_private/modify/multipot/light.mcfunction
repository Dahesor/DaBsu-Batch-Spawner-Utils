$data modify storage dabsu:run form set value $(form)

function dabsu:z_private/modify/take_spawn_data

execute if data storage dabsu:run form{index:0} run data remove block ~ ~ ~ SpawnPotentials[].data.custom_spawn_rules
execute unless data storage dabsu:run form{index:0} run data modify block ~ ~ ~ SpawnPotentials[].data.custom_spawn_rules set from storage dabsu:run form.custom_spawn_rules

data modify storage dabsu:run spawner set from block ~ ~ ~
data remove storage dabsu:run spawner.components
data remove storage dabsu:run spawner.id
data remove storage dabsu:run spawner.Delay
data remove storage dabsu:run spawner.SpawnData
data modify entity @s data.spawner set from storage dabsu:run spawner

execute store result score #x calc.dabsu run data get entity @s Pos[0] 1
execute store result score #y calc.dabsu run data get entity @s Pos[1] 1
execute store result score #z calc.dabsu run data get entity @s Pos[2] 1

function dabsu:z_private/mod/get_this
function dabsu:z_private/placed/send_types
data modify entity @s data.type set from storage dabsu:run Dimensions[0].Chunks[0].Objects[0].type

data modify block ~ ~ ~ SpawnData set from storage dabsu:run spawner.SpawnPotentials[0].data