data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:"[DaBsu] Set Next Spawn Time of Selected Spawners",\
    body:{type:"plain_message",width:400,contents:"This sets the §7Delay§r tag, or ticks until nex spawn for all selected spawners"},\
    inputs:[\
        {key:"delay",type:"text",label:"§bDelay §7(in ticks)",max_length:5,initial:"1",label_visible:true,width:100}\
    ],\
    actions:[\
        {label:{translate:"selectServer.edit",color:"green"},action:{type:"dynamic/run_command",template:"trigger input.dabsu set $(delay)"}},\
        {label:{translate:"gui.back"},action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1004$(none)"}},\
    ],\
    can_close_with_escape:true,after_action:"none",pause:false\
}
#lang

data modify storage dabsu:run dialog.dialog.title set from storage dabsu:run lang.this.multi_property
data modify storage dabsu:run dialog.dialog.body.contents set from storage dabsu:run lang.this.temp_edit_change_delay_1
data modify storage dabsu:run dialog.dialog.inputs[0].label set from storage dabsu:run lang.this.temp_edit_change_delay_1_lab