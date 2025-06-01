data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",title:"[DaBsu] Action Failed",\
    body:[\
        {type:"plain_message",contents:"§c§lSystem Busy",width:400},\
        {type:"plain_message",contents:"§lYour request has been discarded",width:400},\
        {type:"plain_message",contents:"The system is busy editing or selecting spawners",width:400},\
        {type:"plain_message",contents:"Please wait for the last action to complete",width:400},\
    ],\
    can_close_with_escape:true,after_action:"close",pause:false,\
}
data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.temp_settings_busy_1
data modify storage dabsu:run dialog.dialog.body[1].contents set from storage dabsu:run lang.this.temp_settings_busy_2
data modify storage dabsu:run dialog.dialog.body[2].contents set from storage dabsu:run lang.this.temp_settings_busy_3
data modify storage dabsu:run dialog.dialog.body[3].contents set from storage dabsu:run lang.this.temp_settings_busy_4