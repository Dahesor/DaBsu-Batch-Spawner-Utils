data modify storage dabsu:run equipment set value {}
data modify storage dabsu:run equipment set from storage dabsu:run element.data.entity.equipment

execute if data storage dabsu:run equipment.mainhand run data modify storage dabsu:run dialog.dialog.body[1].item set from storage dabsu:run equipment.mainhand
execute if data storage dabsu:run equipment.mainhand run data modify storage dabsu:run dialog.dialog.body[1] merge value {show_tooltip:true,description:["  ",{text:"",italic:false,color:"gray"},"  ",{text:"Copy",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 120"}},"  ",{text:"Replace",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 130"}}]}

execute if data storage dabsu:run equipment.offhand run data modify storage dabsu:run dialog.dialog.body[3].item set from storage dabsu:run equipment.offhand
execute if data storage dabsu:run equipment.offhand run data modify storage dabsu:run dialog.dialog.body[3] merge value {show_tooltip:true,description:["  ",{text:"",italic:false,color:"gray"},"  ",{text:"Copy",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 121"}},"  ",{text:"Replace",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 131"}}]}

execute if data storage dabsu:run equipment.head run data modify storage dabsu:run dialog.dialog.body[5].item set from storage dabsu:run equipment.head
execute if data storage dabsu:run equipment.head run data modify storage dabsu:run dialog.dialog.body[5] merge value {show_tooltip:true,description:["  ",{text:"",italic:false,color:"gray"},"  ",{text:"Copy",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 122"}},"  ",{text:"Replace",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 132"}}]}

execute if data storage dabsu:run equipment.chest run data modify storage dabsu:run dialog.dialog.body[7].item set from storage dabsu:run equipment.chest
execute if data storage dabsu:run equipment.chest run data modify storage dabsu:run dialog.dialog.body[7] merge value {show_tooltip:true,description:["  ",{text:"",italic:false,color:"gray"},"  ",{text:"Copy",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 123"}},"  ",{text:"Replace",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 133"}}]}

execute if data storage dabsu:run equipment.legs run data modify storage dabsu:run dialog.dialog.body[9].item set from storage dabsu:run equipment.legs
execute if data storage dabsu:run equipment.legs run data modify storage dabsu:run dialog.dialog.body[9] merge value {show_tooltip:true,description:["  ",{text:"",italic:false,color:"gray"},"  ",{text:"Copy",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 124"}},"  ",{text:"Replace",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 134"}}]}

execute if data storage dabsu:run equipment.feet run data modify storage dabsu:run dialog.dialog.body[11].item set from storage dabsu:run equipment.feet
execute if data storage dabsu:run equipment.feet run data modify storage dabsu:run dialog.dialog.body[11] merge value {show_tooltip:true,description:["  ",{text:"",italic:false,color:"gray"},"  ",{text:"Copy",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 125"}},"  ",{text:"Replace",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 135"}}]}

execute if data storage dabsu:run equipment.body run data modify storage dabsu:run dialog.dialog.body[13].item set from storage dabsu:run equipment.body
execute if data storage dabsu:run equipment.body run data modify storage dabsu:run dialog.dialog.body[13] merge value {show_tooltip:true,description:["  ",{text:"",italic:false,color:"gray"},"  ",{text:"Copy",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 126"}},"  ",{text:"Replace",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 136"}}]}

execute if data storage dabsu:run equipment.saddle run data modify storage dabsu:run dialog.dialog.body[15].item set from storage dabsu:run equipment.saddle
execute if data storage dabsu:run equipment.saddle run data modify storage dabsu:run dialog.dialog.body[15] merge value {show_tooltip:true,description:["  ",{text:"",italic:false,color:"gray"},"  ",{text:"Copy",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 127"}},"  ",{text:"Replace",underlined:true,color:"green",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 137"}}]}

execute unless data storage dabsu:run equipment.mainhand run data modify storage dabsu:run dialog.dialog.body[1].description[-1] merge value {click_event:{action:"run_command",command:"/trigger trigger.dabsu set 130"}}
execute unless data storage dabsu:run equipment.offhand run data modify storage dabsu:run dialog.dialog.body[3].description[-1] merge value {click_event:{action:"run_command",command:"/trigger trigger.dabsu set 131"}}
execute unless data storage dabsu:run equipment.head run data modify storage dabsu:run dialog.dialog.body[5].description[-1] merge value {click_event:{action:"run_command",command:"/trigger trigger.dabsu set 132"}}
execute unless data storage dabsu:run equipment.chest run data modify storage dabsu:run dialog.dialog.body[7].description[-1] merge value {click_event:{action:"run_command",command:"/trigger trigger.dabsu set 133"}}
execute unless data storage dabsu:run equipment.legs run data modify storage dabsu:run dialog.dialog.body[9].description[-1] merge value {click_event:{action:"run_command",command:"/trigger trigger.dabsu set 134"}}
execute unless data storage dabsu:run equipment.feet run data modify storage dabsu:run dialog.dialog.body[11].description[-1] merge value {click_event:{action:"run_command",command:"/trigger trigger.dabsu set 135"}}
execute unless data storage dabsu:run equipment.body run data modify storage dabsu:run dialog.dialog.body[13].description[-1] merge value {click_event:{action:"run_command",command:"/trigger trigger.dabsu set 136"}}
execute unless data storage dabsu:run equipment.saddle run data modify storage dabsu:run dialog.dialog.body[15].description[-1] merge value {click_event:{action:"run_command",command:"/trigger trigger.dabsu set 137"}}
