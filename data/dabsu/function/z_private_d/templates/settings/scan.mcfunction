data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Scan & Register Settings..."}],\
    columns:2,can_close_with_escape:true,after_action:"close",pause:false,\
    inputs:[\
        {type:"boolean",key:"pierce",initial:false,label:"Pierce Through Blocks",on_true:"-",on_false:""},\
        {type:"number_range",key:"hit_range",start:1,end:40,initial:2,label:"Scan Range On Hit",step:1,width:260},\
        {type:"number_range",key:"path_range",start:1,end:9,initial:2,label:"Scan Range Along Path",step:1,width:260},\
        {type:"number_range",key:"distance",start:100,end:300,initial:150,label:"Max Ray Distance",step:1,width:260},\
    ],\
    actions:[\
        {label:{translate:"gui.done",color:"aqua"},action:{type:"dynamic/run_command",template:"trigger input.dabsu set $(pierce)$(hit_range)$(path_range)$(distance)"}},\
        {label:"Stop Scanning",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1012$(none)"}},\
        {label:{translate:"gui.back"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
    ]\
}

return 1

dialog show @s {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Scan & Register Settings..."}],\
    columns:2,\
    inputs:[\
        {type:"boolean",key:"pierce",initial:false,label:"Pierce Through Blocks",on_true:"-",on_false:""},\
        {type:"number_range",key:"hit_range",start:1,end:40,initial:2,label:"Scan Range On Hit",step:1,width:260},\
        {type:"number_range",key:"path_range",start:1,end:9,initial:2,label:"Scan Range Along Path",step:1,width:260},\
        {type:"number_range",key:"distance",start:100,end:300,initial:150,label:"Max Ray Distance",step:1,width:260},\
    ],\
    actions:[\
        {label:{translate:"gui.done",color:"aqua"},action:{type:"dynamic/run_command",template:"trigger input.dabsu set $(pierce)$(hit_range)$(path_range)$(distance)"}},\
        {label:"Stop Scanning",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1012$(none)"}},\
        {label:{translate:"gui.back"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
    ]\
}