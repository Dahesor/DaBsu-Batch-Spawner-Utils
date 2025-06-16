data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",\
    title:{text:"§6[DaBsu]§r Global Settings"},\
    can_close_with_escape:true,after_action:"none",pause:false,\
    body:[\
        {type:"plain_message",contents:"Modify global settings for this data pack regarding compatibility and performance.",width:300},\
        {type:"plain_message",contents:["If you are about to release your map, ",{text:"\n\nClick Here to Hibernate This Data Pack",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1077"}}]},\
    ],\
    action:{label:{translate:"gui.done"},action:{type:"run_command",command:"trigger trigger.dabsu set 1"}}\
}

##data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:{text:"§6[DaBsu]§r Global Settings"},\
    columns:2,can_close_with_escape:true,after_action:"close",pause:false,\
    body:[\
        {type:"plain_message",contents:"Modify global settings for this data pack regarding compatibility and performance.",width:300},\
        {type:"plain_message",contents:["If you are about to release your map, ",{text:"\n\nClick Here to Hibernate This Data Pack",underlined:true,color:"yellow",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1077"}}]},\
    ],\
    inputs:[\
        {key:"use_actionbar",type:"boolean",label:"Attempt to Use Actionbar",initial:1b,on_false:"-",on_true:""},\
        {key:"use_subtitle",type:"boolean",label:"Attempt to Use Subtitle",initial:1b,on_false:"1",on_true:"2"},\
        {key:"select_rate",type:"number_range",label:"Spawner Select Speed (Spawners/tick)",initial:1000,start:1000,end:5000,step:250,width:300},\
        {key:"chunk_rate",type:"number_range",label:"Spawner Modify Rate (Chunks/tick)",initial:10,start:2,end:30,step:1,width:300},\
    ],\
    actions:[\
        {label:{translate:"gui.done"},action:{type:"dynamic/run_command",template:"trigger input.dabsu set $(use_actionbar)$(chunk_rate)$(select_rate)$(use_subtitle)"}},\
        {label:{translate:"gui.cancel"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
    ],\
}