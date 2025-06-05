scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=marker,tag=dabsu.quick_edit,tag=dabsu.analyzing] if score @s uid.dabsu = #this uid.dabsu run return 1

function dabsu:z_private/text/get
function dabsu:z_private_d/templates/single_home

function dabsu:z_private_d/uid/get
function dabsu:z_priq/selected/update/entry with storage dabsu:user data[0].editing
data modify storage dabsu:run data set from storage dabsu:user data[0].target
#Header
data modify storage dabsu:run run set from storage dabsu:run data.pos
data modify storage dabsu:run run.type set from storage dabsu:run data.type
data modify storage dabsu:run run.in set from storage dabsu:run data.in
function dabsu:z_private_d/lines/spawner_top_info with storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[1].description.contents set from storage dabsu:run final
data modify storage dabsu:run dialog.dialog.body[1].item.components set from block ~ ~ ~ components
function dabsu:z_priq/menu/gen/get_type_count with storage dabsu:run run

#History
function dabsu:z_priq/menu/history/validate

#Copy Full Data
data modify storage dabsu:run nbt_to_string.input set from block ~ ~ ~ {}
function dabsu:z_private/mod/nbt_to_string/get
data modify storage dabsu:run dialog.dialog.actions[0].action.value set from storage dabsu:run nbt_to_string.output

#Copy SpawnPotentials
data modify storage dabsu:run nbt_to_string.input set from storage dabsu:run nbt_to_string.input.SpawnData
execute if data storage dabsu:run spawner.SpawnPotentials[0] run data modify storage dabsu:run nbt_to_string.input set from storage dabsu:run spawner.SpawnPotentials
function dabsu:z_private/mod/nbt_to_string/get
data modify storage dabsu:run dialog.dialog.actions[1].action.value set from storage dabsu:run nbt_to_string.output

#Analyzer
scoreboard players set #exist uid.dabsu 0
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=block_display,tag=dabsu.analyz_marker] if score @s uid.dabsu = #this uid.dabsu run scoreboard players set #exist uid.dabsu 1
execute if score #exist uid.dabsu matches 1 run data modify storage dabsu:run dialog.dialog.actions[-2] set value {label:{text:"Clear Analyze Results",color:"#ff6969"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 198"},tooltip:"Clears the colored tiles from your last spawn analysis"}



#Lang
execute if score #exist uid.dabsu matches 1 run data modify storage dabsu:run dialog.dialog.actions[-2].label.text set from storage dabsu:run lang.this.menu_home_1



function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog