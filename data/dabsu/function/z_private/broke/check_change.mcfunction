data modify storage dabsu:run spawner set from block ~ ~ ~

execute if data storage dabsu:run spawner.SpawnData.entity.id unless data storage dabsu:run spawner.SpawnPotentials[0] run return run function dabsu:z_private/broke/use_spawn_data

data remove storage dabsu:run spawner.components
data remove storage dabsu:run spawner.id
data remove storage dabsu:run spawner.Delay
data remove storage dabsu:run spawner.SpawnData

execute if data storage dabsu:run spawner.SpawnPotentials[0] unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity.id run data remove storage dabsu:run spawner.SpawnPotentials[0]

scoreboard players set $changed calc.dabsu 0
execute store result score $changed calc.dabsu run data modify storage dabsu:run spawner set from entity @s data.spawner
execute if score $changed calc.dabsu matches 0 run return fail


#Apply Channges
data modify storage dabsu:run spawner set from block ~ ~ ~
data remove storage dabsu:run spawner.components
data remove storage dabsu:run spawner.id
data remove storage dabsu:run spawner.Delay
data remove storage dabsu:run spawner.SpawnData
execute if data storage dabsu:run spawner.SpawnPotentials[0] unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity.id run data remove block ~ ~ ~ SpawnPotentials[0]
execute if data storage dabsu:run spawner.SpawnPotentials[0] unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity.id run data remove storage dabsu:run spawner.SpawnPotentials[0]

execute if data storage dabsu:run spawner.SpawnPotentials[0] run data modify block ~ ~ ~ SpawnData set from storage dabsu:run spawner.SpawnPotentials[0].data

data modify entity @s data.spawner set from storage dabsu:run spawner

execute store result score #x calc.dabsu run data get entity @s Pos[0] 1
execute store result score #y calc.dabsu run data get entity @s Pos[1] 1
execute store result score #z calc.dabsu run data get entity @s Pos[2] 1


function dabsu:z_private/mod/get_this
function dabsu:z_private/placed/send_types
data modify entity @s data.type set from storage dabsu:run Dimensions[0].Chunks[0].Objects[0].type



function dabsu:z_private/text/tellraw {text:{text:"spawner_changed",color:"gray",extra:[{score:{objective:"calc.dabsu",name:"#x"}}," ",{score:{objective:"calc.dabsu",name:"#y"}}," ",{score:{objective:"calc.dabsu",name:"#z"}}]}}
tellraw @a[distance=..50,tag=dabsu.get_notice] {storage:"dabsu:run",nbt:"text",interpret:true}

execute align xyz summon block_display run function dabsu:z_private/broke/changed_display