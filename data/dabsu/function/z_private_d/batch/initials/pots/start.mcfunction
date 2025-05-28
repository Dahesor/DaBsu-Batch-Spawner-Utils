#index
scoreboard players add #index calc.dabsu 1
data modify storage dabsu:run run set value {index:0,page:0}
execute store result storage dabsu:run run.page int 1 run scoreboard players get #index calc.dabsu
scoreboard players add #index calc.dabsu 100
execute store result storage dabsu:run run.index int 1 run scoreboard players get #index calc.dabsu
scoreboard players remove #index calc.dabsu 100

data modify storage dabsu:run dialog.dialog.actions insert -2 value {label:["",{text:"!"},{text:"?",color:"gray"}],width:90,action:{type:"run_command",command:"/trigger input.dabsu set 0"}}
function dabsu:z_private_d/batch/initials/pots/__insert_index with storage dabsu:run run

#ID
data modify storage dabsu:run id set from storage dabsu:run spawner.SpawnPotentials[0].data.entity.id
execute store result score $length calc.dabsu run data get storage dabsu:run id
execute if score $length calc.dabsu matches 11.. run function dabsu:z_private/mod/remove_minecraft

data modify storage dabsu:run dialog.dialog.actions[-2].label[2].text set from storage dabsu:run id
execute if data storage dabsu:run spawner.SpawnPotentials[0].data.entity.CustomName run data modify storage dabsu:run dialog.dialog.actions[-2].label[2] set from storage dabsu:run spawner.SpawnPotentials[0].data.entity.CustomName


data remove storage dabsu:run spawner.SpawnPotentials[0]
execute if data storage dabsu:run spawner.SpawnPotentials[0] run function dabsu:z_private_d/batch/initials/pots/start