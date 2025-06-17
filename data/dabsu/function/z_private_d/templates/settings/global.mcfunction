data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",\
    title:{text:"§6[DaBsu]§r Global Settings"},\
    can_close_with_escape:true,after_action:"none",pause:false,\
    body:[\
        {type:"plain_message",contents:"Modify global settings for this data pack regarding compatibility and performance.",width:300},\
        {type:"plain_message",contents:["If you are about to release your map, ",{text:"\n\nClick Here to Hibernate This Data Pack",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1077"}}]},\
    ],\
    action:{label:{translate:"gui.done"},action:{type:"run_command",command:"trigger trigger.dabsu set 1"}}\
}

## Lang
data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.goption_master
data modify storage dabsu:run dialog.dialog.body[1].contents[0] set from storage dabsu:run lang.this.goption_hib_1
data modify storage dabsu:run dialog.dialog.body[1].contents[1].text set from storage dabsu:run lang.this.goption_hib_2