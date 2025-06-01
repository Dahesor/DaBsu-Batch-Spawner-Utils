execute unless data storage dabsu:user data[0].editing.history[0] run return fail
execute store result score #current calc.dabsu run data get storage dabsu:run data.type
execute store result score #origin calc.dabsu run data get storage dabsu:user data[0].editing.history[0]

execute if score #current calc.dabsu = #origin calc.dabsu run return fail

data modify storage dabsu:run run set value {ot:0,oc:0,nt:0,nc:0}
data modify storage dabsu:run run.nc set from storage dabsu:run nbt.i
execute store result storage dabsu:run run.nt int 1 run scoreboard players get #current calc.dabsu
execute store result storage dabsu:run run.ot int 1 run scoreboard players get #origin calc.dabsu
data modify storage dabsu:run nbt.i set from storage dabsu:user data[0].editing.history[0]
execute store result storage dabsu:run run.oc int 1 run function dabsu:z_priq/menu/history/__get_type_amount with storage dabsu:run nbt

function dabsu:z_priq/menu/history/__gen_text with storage dabsu:run run


data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:["",{text:"Click Here to Sync",color:"yellow",underlined:true,hover_event:{action:"show_text",value:"Sync all spawners' SpawnPotentials in the original type to the same as the one you are editing"},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 180"}},{text:"  |  "},{text:"Click Here to Revert",color:"red",underlined:true,hover_event:{action:"show_text",value:"Revert changes on the SpawnPotentials on this spawner to its original type"},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 181"}}],width:400}

#lang
data modify storage dabsu:run dialog.dialog.body[-1].contents[1].text set from storage dabsu:run lang.this.menu_history_validate_1
data modify storage dabsu:run dialog.dialog.body[-1].contents[1].hover_event.value set from storage dabsu:run lang.this.sync_1
data modify storage dabsu:run dialog.dialog.body[-1].contents[3].text set from storage dabsu:run lang.this.menu_history_validate_3
data modify storage dabsu:run dialog.dialog.body[-1].contents[3].hover_event.value set from storage dabsu:run lang.this.sync_2