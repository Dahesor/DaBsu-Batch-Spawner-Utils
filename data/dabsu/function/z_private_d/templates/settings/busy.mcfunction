data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",title:"[DaBsu] Action Failed",\
    body:[\
        {type:"plain_message",contents:"§c§lSystem Busy",width:400},\
        {type:"plain_message",contents:"§lYour request has been discarded",width:400},\
        {type:"plain_message",contents:"The system is busy editing or selecting spawners",width:400},\
        {type:"plain_message",contents:"Please wait for the last action to complete",width:400},\
    ],\
    can_close_with_escape:true,after_action:"close",pause:false,\
}

return 1

dialog show @s {type:"minecraft:notice",title:"[DaBsu] Action Failed",\
    body:[\
        {type:"plain_message",contents:"§c§lSystem Busy",width:400},\
        {type:"plain_message",contents:"§lYour action has been discarded",width:400},\
        {type:"plain_message",contents:"The system is busy editing or selecting spawners",width:400},\
        {type:"plain_message",contents:"Please wait for the last action to complete",width:400},\
    ],\
}