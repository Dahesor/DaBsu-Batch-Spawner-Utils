function dabsu:z_private/text/get
function dabsu:z_priq/menu/templates/multi_confirm

data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",width:400,contents:{text:"§dQuick Edit§r: Are You Sure?",color:"red"}},{type:"plain_message",width:400,contents:"\n§lYou are about to delete the current entry"},{type:"plain_message",width:400,contents:"This action cannot be undone!"}]

data modify storage dabsu:run dialog.dialog.actions[0].action set value {type:"run_command",command:"/trigger trigger.dabsu set 107"}
data modify storage dabsu:run dialog.dialog.actions[0].label set value {translate:"selectWorld.delete",color:"gold"}

##lang
data modify storage dabsu:run dialog.dialog.body[0].contents.text set from storage dabsu:run lang.this.menu_confirm_del_entry_1
data modify storage dabsu:run dialog.dialog.body[1].contents set from storage dabsu:run lang.this.menu_confirm_del_entry_2
data modify storage dabsu:run dialog.dialog.body[2].contents set from storage dabsu:run lang.this.menu_confirm_del_entry_3


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog