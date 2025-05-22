function dabsu:z_private_dialog/templates/select_potential
scoreboard players set #index calc.dabsu 200

# Insert Buttons
data modify storage dabsu:run run set value {weight:100,data:{}}
data modify storage dabsu:run spawner set from block ~ ~ ~
execute if data storage dabsu:run spawner.SpawnData.entity.id unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity run data modify storage dabsu:run spawner.SpawnPotentials append from storage dabsu:run run
execute if data storage dabsu:run spawner.SpawnData.entity.id unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity run data modify storage dabsu:run spawner.SpawnPotentials[0].data set from storage dabsu:run spawner.SpawnData
execute if data storage dabsu:run spawner.SpawnPotentials[0] run function dabsu:z_private/wand/quickedit/funcs/element

function dabsu:z_private_dialog/pages/show_any with storage dabsu:run dialog