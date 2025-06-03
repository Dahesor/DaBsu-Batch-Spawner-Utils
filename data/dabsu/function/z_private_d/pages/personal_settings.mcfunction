function dabsu:z_private/text/get
function dabsu:z_private_d/templates/settings/personal

function dabsu:z_private_d/uid/get

execute if data storage dabsu:user data[0].settings{PrimaryQuickAction:"potential"} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Primary Quick Action: SpawnPotential",color:"yellow",underlined:true,hover_event:{action:"show_text",value:{text:"The Primary Quick Action defines \nwhether the Properties page \nor the SpawnPotentials page \nshould open when pressing F during \nQuick Edit. \nThe other one will be opened with Sneak+F"}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1310"}},width:300}
execute unless data storage dabsu:user data[0].settings{PrimaryQuickAction:"potential"} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Primary Quick Action: Properties",color:"green",underlined:true,hover_event:{action:"show_text",value:{text:"The Primary Quick Action defines \nwhether the Properties page \nor the SpawnPotentials page \nshould open when pressing F during \nQuick Edit. \nThe other one will be opened with Sneak+F"}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1311"}},width:300}

execute if data storage dabsu:user data[0].settings{disableBatchRightClick:true} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Right Click for Batch Edit Selection: Off",color:"red",underlined:true,hover_event:{action:"show_text",value:{text:"If turned on, when not using Quick Edit, \nyou can right click a spawner to\nselect or de-select it for Batch Edit"}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1314"}},width:300}
execute unless data storage dabsu:user data[0].settings{disableBatchRightClick:true} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Right Click for Batch Edit Selection: On",color:"green",underlined:true,hover_event:{action:"show_text",value:{text:"If turned on, when not using Quick Edit,\n you can right click a spawner to\nselect or de-select it for Batch Edit"}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1315"}},width:300}

execute if data storage dabsu:user data[0].settings{disableDisplayTiles:true} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Quick Edit Display Entities: Off",color:"red",underlined:true,hover_event:{action:"show_text",value:{text:"If turned on, display entities will present \nduring quick edit to visualize spawner range \nand you may drag a node for visualized edit"}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1318"}},width:300}
execute unless data storage dabsu:user data[0].settings{disableDisplayTiles:true} run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Quick Edit Display Entities: On",color:"green",underlined:true,hover_event:{action:"show_text",value:{text:"If turned on, display entities will present \nduring quick edit to visualize spawner range \nand you may drag a node for visualized edit"}},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1319"}},width:300}


data modify storage dabsu:run dialog.dialog.body append value {contents:"",type:"plain_message"}


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog