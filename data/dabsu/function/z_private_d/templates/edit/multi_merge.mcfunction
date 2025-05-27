data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:{text:"§6[DaBsu]§r Merge to Each Potential..."},\
    columns:2,\
    body:{type:"plain_message",contents:"Leave any input to §a\"{}\"§r to not change it.",width:400},\
    inputs:[\
        {type:"text",key:"entity",label:"§bMerge to§7 \"data.entity\"",initial:"{}",width:400,label_visible:true,multiline:{height:120},max_length:2147483647},\
        {type:"text",key:"equipment",label:"§bMerge to §7\"data.equipment\"",initial:"{}",width:400,label_visible:true,max_length:2147483647},\
    ],\
    actions:[\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:'function dabsu:z_private_d/batch/link/pots/merge_to_all {form:{entity:$(entity),equipment:$(equipment)}}'}},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1203$(null)"}},\
    ]\
}