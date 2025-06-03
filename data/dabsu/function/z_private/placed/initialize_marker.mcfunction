tag @s add dabsu.marker
data modify entity @s CustomName set value "Spawner"
data modify storage dabsu:run data set value {name:"."}

function dabsu:z_private/mod/coords

data modify storage dabsu:run data.UUID set from entity @s UUID
data modify storage dabsu:run data.in set from storage dabsu:run in

function dabsu:z_private/mod/get_chunk/main
data modify storage dabsu:run Dimensions[0].Chunks[0].Objects prepend value {Pos:{}}
data modify storage dabsu:run Dimensions[0].Chunks[0].Objects[0].UUID set from storage dabsu:run data.UUID
execute store result storage dabsu:run Dimensions[0].Chunks[0].Objects[0].Pos.x int 1 run scoreboard players get #x calc.dabsu
execute store result storage dabsu:run Dimensions[0].Chunks[0].Objects[0].Pos.y int 1 run scoreboard players get #y calc.dabsu
execute store result storage dabsu:run Dimensions[0].Chunks[0].Objects[0].Pos.z int 1 run scoreboard players get #z calc.dabsu
function dabsu_gu:generate
data modify storage dabsu:run Dimensions[0].Chunks[0].Objects[0].sUUID set from storage gu:main out
data modify storage dabsu:run data.pos set from storage dabsu:run Dimensions[0].Chunks[0].Objects[0].Pos
data modify storage dabsu:run data.chunk set value {x:0,z:0}
execute store result storage dabsu:run data.chunk.x int 1 run scoreboard players get #cx calc.dabsu
execute store result storage dabsu:run data.chunk.z int 1 run scoreboard players get #cz calc.dabsu

data modify storage dabsu:run spawner set from block ~ ~ ~
execute if data storage dabsu:run spawner.SpawnData.entity.id unless data storage dabsu:run spawner.SpawnPotentials[0] run function dabsu:z_private/change/use_spawn_data
data remove storage dabsu:run spawner.components
data remove storage dabsu:run spawner.id
data remove storage dabsu:run spawner.Delay
data remove storage dabsu:run spawner.SpawnData
data modify storage dabsu:run data.spawner set from storage dabsu:run spawner

execute if score $recorded calc.dabsu matches 1 run data modify storage dabsu:run Dimensions[0].Chunks[0].Objects[0].type set from storage dabsu:run item.components."minecraft:custom_data".dabsu.Potential.type
execute if score $recorded calc.dabsu matches 0 run function dabsu:z_private/placed/send_types

data modify storage dabsu:run data.type set from storage dabsu:run Dimensions[0].Chunks[0].Objects[0].type

data modify entity @s data set from storage dabsu:run data

function dabsu:z_private/text/tellraw {text:{text:"spawner_placed",color:"gray",extra:[{score:{objective:"calc.dabsu",name:"#x"}}," ",{score:{objective:"calc.dabsu",name:"#y"}}," ",{score:{objective:"calc.dabsu",name:"#z"}}]}}
tellraw @a[distance=..50,tag=dabsu.get_notice] {storage:"dabsu:run",nbt:"text",interpret:true}

execute unless score $restarting calc.dabsu matches 1 align xyz summon block_display run function dabsu:z_private/placed/displayer_self