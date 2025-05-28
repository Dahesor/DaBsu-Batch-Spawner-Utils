execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/confirm

data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",width:400,contents:{text:"Are You Sure?",bold:true,color:"red"}},{type:"plain_message",width:400,contents:"\n§lYou are about to delete the current entry"},{type:"plain_message",width:400,contents:"This action cannot be undone!"}]

data modify storage dabsu:run dialog.dialog.yes.action set value {type:"run_command",command:"/trigger trigger.dabsu set 1231"}
data modify storage dabsu:run dialog.dialog.yes.label set value {translate:"selectWorld.delete",color:"red"}

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog