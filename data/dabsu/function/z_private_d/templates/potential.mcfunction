data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Edit Potential["},{text:"0",color:"green"},"]..."],\
    columns:3,\
    inputs:[\
        {type:"number_range",key:"weight",start:1,end:1000,initial:100,label:"weight",step:1,width:400},\
        {type:"text",key:"entity",label:"§bEntity§7 (data.entity)",initial:"{}",width:400,label_visible:true,multiline:{height:150},max_length:2147483647},\
        {type:"text",key:"loot_table",label:"§bEquipment§7 (data.equipment) §a Leave it to §7\"{}\"§a to omit",initial:"{}",width:400,label_visible:true,max_length:2147483647},\
    ],\
    actions:[\
        {id:"presets",label:"§bEdit Common Tags",tooltip:"Edit Some of the common tags",on_submit:{type:"command_template",template:"say -$(none)"},width:110},\
        {id:"light_levels",label:"§bEdit Light Levels",tooltip:"Edit §7data.custom_spawn_rules§r",on_submit:{type:"command_template",template:"say -$(none)"},width:110},\
        {id:"del",label:{translate:"selectWorld.delete",color:"red"},tooltip:"Delete This Entry",on_submit:{type:"command_template",template:"say -$(none)"},width:110},\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:'-$(none)'},width:110},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"say -$(none)"},width:110},\
    ]\
}

return 1