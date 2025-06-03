data modify storage dabsu:run dialog.dialog.body append value {type:"item",description:{width:300,contents:[" ",{text:" ✔ ",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger input.dabsu set 100"},hover_event:{action:"show_text",value:[""]}}]}}

$data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].click_event.command set value "/trigger input.dabsu set $(index)"

data modify storage dabsu:run dialog.dialog.body[-1].item set from storage dabsu:run item
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value[0] set from storage dabsu:run item.components."minecraft:entity_data".id
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append value "\n\n"
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append from storage dabsu:run item.components."minecraft:entity_data".equipment.mainhand.id

execute if data storage dabsu:run item.components."minecraft:entity_data".equipment.offhand.id run data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append value "\n"
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append from storage dabsu:run item.components."minecraft:entity_data".equipment.offhand.id
execute if data storage dabsu:run item.components."minecraft:entity_data".equipment.head.id run data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append value "\n"
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append from storage dabsu:run item.components."minecraft:entity_data".equipment.head.id

execute if data storage dabsu:run item.components."minecraft:entity_data".equipment.chest.id run data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append value "\n"
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append from storage dabsu:run item.components."minecraft:entity_data".equipment.chest.id

execute if data storage dabsu:run item.components."minecraft:entity_data".equipment.legs.id run data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append value "\n"
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append from storage dabsu:run item.components."minecraft:entity_data".equipment.legs.id

execute if data storage dabsu:run item.components."minecraft:entity_data".equipment.feet.id run data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append value "\n"
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append from storage dabsu:run item.components."minecraft:entity_data".equipment.feet.id

execute if data storage dabsu:run item.components."minecraft:entity_data".equipment.body.id run data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append value "\n"
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append from storage dabsu:run item.components."minecraft:entity_data".equipment.body.id

execute if data storage dabsu:run item.components."minecraft:entity_data".equipment.saddle.id run data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append value "\n"
data modify storage dabsu:run dialog.dialog.body[-1].description.contents[1].hover_event.value append from storage dabsu:run item.components."minecraft:entity_data".equipment.saddle.id
