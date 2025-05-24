data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:{text:"§6[DaBsu]§r Merge to Each Potential..."},\
    columns:2,\
    body:{type:"plain_message",contents:"Leav any input to §a\"{}\"§r to not change it.",width:400},\
    inputs:[\
        {type:"text",key:"entity",label:"§bMerge to§7 \"data.entity\"",initial:"{}",width:400,label_visible:true,multiline:{height:120},max_length:2147483647},\
        {type:"text",key:"equipment",label:"§bMerge to §7\"data.equipment\"",initial:"{}",width:400,label_visible:true,max_length:2147483647},\
    ],\
    actions:[\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:'function dabsu:z_private_d/batch/link/pots/merge_to_all {form:{entity:$(entity),equipment:$(equipment)}}'}},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1203$(null)"}},\
    ]\
}
data get storage dabsu:run spawner.SpawnPotentials[].data.equipment.loot_table
return 1

dialog show @s {type:"minecraft:multi_action_input_form",\
    title:{text:"§6[DaBsu]§r Merge to Each Potential..."},\
    columns:2,\
    body:{type:"plain_message",contents:"§bCheck the box below to replace §7\"data.equipment.loot_table\"§b with your input. Check the box and leave the input empty will remove the §7\"data.equipment\"§b tag.",width:300},\
    inputs:[\
        {type:"boolean",key:"use",initial:false,on_true:"1",on_false:"0",label:""},\
        {type:"text",key:"loot_table",label:"§bReplace §7\"data.equipment.loot_table\"§b with...",initial:"",width:400,label_visible:true,max_length:2147483647},\
        {type:"text",key:"entity",label:"§bMerge to§7 \"data.entity\"",initial:"{}",width:400,label_visible:true,multiline:{height:120},max_length:2147483647},\
    ],\
    actions:[\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:'function dabsu:z_private_d/batch/link/pots/merge_to_all {form:{index:$(use),entity:$(entity),equipment:{loot_table:"$(loot_table)"}}}'}},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1203$(null)"}},\
    ]\
}

