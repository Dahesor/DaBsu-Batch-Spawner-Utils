data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",\
    title:{text:"§6[DaBsu]§r Global Settings"},\
    can_close_with_escape:true,after_action:"none",pause:false,\
    body:[\
        {type:"plain_message",contents:"These settings only affect yourself",width:300},\
    ],\
    action:{label:{translate:"gui.done"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
}