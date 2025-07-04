function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy
function dabsu:z_private_d/templates/confirm

data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:["",{text:"Are You Sure?",bold:true,color:"gold"}]},{type:"plain_message",contents:"\n§lYou are selecting all spawners."},{type:"plain_message",contents: "Any edit you make next will affect everything."}]

data modify storage dabsu:run dialog.dialog.yes.action set value {type:"run_command",command:"/trigger trigger.dabsu set 1143"}

data modify storage dabsu:run dialog.dialog.no.action set value {type:"run_command",command:"/trigger trigger.dabsu set 1001"}

##Lang
data modify storage dabsu:run dialog.dialog.body[0].contents[1].text set from storage dabsu:run lang.this.menu_templates_multi_confirm_2
data modify storage dabsu:run dialog.dialog.body[1].contents set from storage dabsu:run lang.this.batch_settings_confirm_select_all_1
data modify storage dabsu:run dialog.dialog.body[2].contents set from storage dabsu:run lang.this.select_all_warning

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog