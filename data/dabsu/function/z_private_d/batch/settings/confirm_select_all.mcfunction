execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy
function dabsu:z_private_d/templates/confirm

data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:["",{text:"Are You Sure?",bold:true,color:"gold"}]},{type:"plain_message",contents:"\n§lYou are selecting all spawners."},{type:"plain_message",contents: "Any edit you make next will affect everything."}]

data modify storage dabsu:run dialog.dialog.yes.on_click set value {action:"run_command",command:"/trigger trigger.dabsu set 1143"}

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog