function dabsu:z_priq/menu/templates/multi_confirm

data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",width:400,contents:{text:"§dQuick Edit§r: Are You Sure?",bold:true,color:"red"}},{type:"plain_message",width:400,contents:"\n§lYou are about to delete the current entry"},{type:"plain_message",width:400,contents:"This action cannot be undone!"}]

data modify storage dabsu:run dialog.dialog.actions[0].on_click set value {action:"run_command",command:"/trigger trigger.dabsu set 107"}
data modify storage dabsu:run dialog.dialog.actions[0].label set value {translate:"selectWorld.delete",color:"gold"}

data modify storage dabsu:run dialog.dialog.actions[1].on_click set value {action:"run_command",command:"/trigger trigger.dabsu set 108"}
data modify storage dabsu:run dialog.dialog.actions[1].label.text set value "Delete Also For Same Potential"

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog