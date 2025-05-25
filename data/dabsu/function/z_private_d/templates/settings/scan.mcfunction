data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Edit Slot Drop Chances..."}],\
    columns:2,\
    inputs:[\
        {type:"boolean",key:"pierce",initial:false,label:"Pierce Through Blocks",on_true:"-",on_false:""},\
        {type:"number_range",key:"hit_range",start:1,end:40,initial:2,label:"Scan Range On Hit",step:1,width:260},\
        {type:"number_range",key:"path_range",start:1,end:9,initial:2,label:"Scan Range In Path",step:1,width:260},\
        {type:"number_range",key:"distance",start:100,end:300,initial:150,label:"Max Ray Distance",step:1,width:260},\
    ],\
    actions:[\
        {id:"confirm",label:{translate:"gui.done",color:"aqua"},on_submit:{type:"command_template",template:"trigger input.dabsu set $(pierce)$(hit_range)$(path_range)$(distance)"}},\
        {id:"stop",label:"Stop Scanning",on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1012$(none)"}},\
        {id:"cancel",label:{translate:"gui.back"},on_submit:{type:"command_template",template:"say -$(none)"}},\
    ]\
}

return 1

dialog show @s {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Edit Slot Drop Chances..."}],\
    columns:2,\
    inputs:[\
        {type:"boolean",key:"pierce",initial:false,label:"Pierce Through Blocks",on_true:"-",on_false:""},\
        {type:"number_range",key:"hit_range",start:1,end:40,initial:20,label:"Scan Range On Hit",step:1,width:260},\
        {type:"number_range",key:"path_range",start:1,end:9,initial:3,label:"Scan Range In Path",step:1,width:260},\
        {type:"number_range",key:"distance",start:100,end:300,initial:200,label:"Max Ray Distance",step:1,width:260},\
    ],\
    actions:[\
        {id:"confirm",label:{translate:"gui.done"},on_submit:{type:"command_template",template:"trigger register_range.dabsu set $(pierce)$(hit_range)$(path_range)$(distance)"}},\
        {id:"stop",label:"Stop",on_submit:{type:"command_template",template:"say -$(none)"}},\
        {id:"cancel",label:{translate:"gui.back",color:"aqua"},on_submit:{type:"command_template",template:"say -$(none)"}},\
    ]\
}