function dabsu:z_private/text/get
function dabsu:z_private_d/templates/settings/personal

function dabsu:z_private_d/uid/get

execute if data storage dabsu:user data[0].settings{PrimaryQuickAction:"potential"} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Primary Quick Action: §nSpawnPotential",color:"yellow",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1310"}},width:300}
execute unless data storage dabsu:user data[0].settings{PrimaryQuickAction:"potential"} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Primary Quick Action: §nProperties",color:"green",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1311"}},width:300}

execute if data storage dabsu:user data[0].settings{disableBatchRightClick:true} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Right Click for Batch Edit Selection: §nOff",color:"red",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1314"}},width:300}
execute unless data storage dabsu:user data[0].settings{disableBatchRightClick:true} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Right Click for Batch Edit Selection: §nOn",color:"green",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1315"}},width:300}

execute if data storage dabsu:user data[0].settings{disableDisplayTiles:true} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Quick Edit Display Entities: §nOff",color:"red",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1318"}},width:300}
execute unless data storage dabsu:user data[0].settings{disableDisplayTiles:true} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Quick Edit Display Entities: §nOn",color:"green",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1319"}},width:300}

execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"off"} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Shift Click for Main Menu: §nOff",color:"red",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1330"}},width:300}
execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"on"} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Shift Click for Main Menu: §nOn",color:"green",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1331"}},width:300}
execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"quick"} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Shift Click for Main Menu: §nDuring Quick Edit",color:"yellow",hover_event:{action:"show_text",value:{text:"..."}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1332"}},width:300}


data modify storage dabsu:run dialog.dialog.body append value {contents:{"translate": "options.language.title",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1320"},color:"aqua",underlined:true,hover_event:{action:"show_text",value:["DaBsu ",{"translate": "options.language"}]}},type:"plain_message"}
data modify storage dabsu:run dialog.dialog.body append value {contents:"",type:"plain_message"}


## Lang

execute if data storage dabsu:user data[0].settings{PrimaryQuickAction:"potential"} run data modify storage dabsu:run dialog.dialog.body[1].contents.text set from storage dabsu:run lang.this.poption_paction_po
execute unless data storage dabsu:user data[0].settings{PrimaryQuickAction:"potential"} run data modify storage dabsu:run dialog.dialog.body[1].contents.text set from storage dabsu:run lang.this.poption_paction_pr

execute if data storage dabsu:user data[0].settings{disableBatchRightClick:true} run data modify storage dabsu:run dialog.dialog.body[2].contents.text set from storage dabsu:run lang.this.poption_batch_click_off
execute unless data storage dabsu:user data[0].settings{disableBatchRightClick:true} run data modify storage dabsu:run dialog.dialog.body[2].contents.text set from storage dabsu:run lang.this.poption_batch_click_on

execute if data storage dabsu:user data[0].settings{disableDisplayTiles:true} run data modify storage dabsu:run dialog.dialog.body[3].contents.text set from storage dabsu:run lang.this.poption_dentity_off
execute unless data storage dabsu:user data[0].settings{disableDisplayTiles:true} run data modify storage dabsu:run dialog.dialog.body[3].contents.text set from storage dabsu:run lang.this.poption_dentity_on

execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"off"} run data modify storage dabsu:run dialog.dialog.body[4].contents.text set from storage dabsu:run lang.this.poption_shrc_off
execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"on"} run data modify storage dabsu:run dialog.dialog.body[4].contents.text set from storage dabsu:run lang.this.poption_shrc_on
execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"quick"} run data modify storage dabsu:run dialog.dialog.body[4].contents.text set from storage dabsu:run lang.this.poption_shrc_qe

data modify storage dabsu:run dialog.dialog.body[1].contents.hover_event.value set from storage dabsu:run lang.this.poption_paction_tip
data modify storage dabsu:run dialog.dialog.body[2].contents.hover_event.value set from storage dabsu:run lang.this.poption_batch_click_tip
data modify storage dabsu:run dialog.dialog.body[3].contents.hover_event.value set from storage dabsu:run lang.this.poption_dentity_tip
data modify storage dabsu:run dialog.dialog.body[4].contents.hover_event.value set from storage dabsu:run lang.this.poption_shrc_tip


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog