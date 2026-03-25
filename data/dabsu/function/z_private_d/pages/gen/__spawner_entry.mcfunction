data modify storage dabsu:run dialog.dialog.body append value {type:"item",description:{width:20,contents:[" ",{text:" ✔ ",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger input.dabsu set 100"},hover_event:{action:"show_text",value:[""]}}]}}

$data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].click_event.command set value "/trigger input.dabsu set $(index)"

function dabsu:z_private/mod/item_mod

data modify storage dabsu:run dialog.dialog.body[-1].item set from storage dabsu:run item