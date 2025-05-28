data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:"[DaBsu] Set Next Spawn Time of Selected Spawners",\
    body:{type:"plain_message",width:400,contents:"This sets the §7Delay§r tag, or ticks until nex spawn for all selected spawners"},\
    inputs:[\
        {key:"delay",type:"text",label:"§bDelay §7(in ticks)",max_length:5,initial:"1",label_visible:true,width:100}\
    ],\
    actions:[\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:"trigger input.dabsu set $(delay)"}},\
        {id:"cancel",label:{translate:"gui.back"},on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1004$(none)"}},\
    ],\
}

return 1

dialog show @s {type:"minecraft:multi_action",\
    title:"[DaBsu] Set Next Spawn Time of Selected Spawners",\
    body:{type:"plain_message",width:400,contents:"This sets the §7Delay§r tag, or ticks until nex spawn for all selected spawners"},\
    inputs:[\
        {key:"delay",type:"text",label:"§bDelay §7(in ticks)",max_length:5,initial:"1",label_visible:true,width:100}\
    ],\
    actions:[\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:"trigger input.dabsu set $(delay)"}},\
        {id:"cancel",label:{translate:"gui.back"},on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1004$(none)"}},\
    ],\
}