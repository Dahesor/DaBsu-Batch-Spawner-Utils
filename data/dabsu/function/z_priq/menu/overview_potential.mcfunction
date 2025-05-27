function dabsu:z_private_d/templates/select_potential
scoreboard players set #index calc.dabsu 99
scoreboard players set @s waiting.dabsu 10
scoreboard players enable @s input.dabsu

data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§d Quick Edit -§r Select Potential..."}

data modify storage dabsu:run dialog.dialog.body set value {type:"plain_message",contents:{text:"§d Quick Edit Potentials"}}

# Insert Buttons
data modify storage dabsu:run run set value {weight:100,data:{}}
data modify storage dabsu:run spawner set from block ~ ~ ~
execute if data storage dabsu:run spawner.SpawnData.entity.id unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity run data modify storage dabsu:run spawner.SpawnPotentials append from storage dabsu:run run
execute if data storage dabsu:run spawner.SpawnData.entity.id unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity run data modify storage dabsu:run spawner.SpawnPotentials[0].data set from storage dabsu:run spawner.SpawnData
execute if data storage dabsu:run spawner.SpawnPotentials[0] run function dabsu:z_priq/menu/gen/element
function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog