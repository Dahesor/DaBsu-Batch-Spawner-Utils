data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Edit Potential["},{text:"0",color:"green"},"]..."],\
    columns:2,\
    inputs:[\
        {type:"number_range",key:"weight",start:1,end:1000,initial:100,label:"weight",step:1,width:400},\
        {type:"text",key:"entity",label:"§bEntity§7 (data.entity)",initial:"{}",width:400,label_visible:true,multiline:{height:180},max_length:2147483647},\
        {type:"text",key:"loot_table",label:"§bEquipment Loot Table§7 (data.equipment.loot_table)",initial:"",width:400,label_visible:true,max_length:2147483647},\
    ],\
    actions:[\
        {id:"light_levels",label:"§bEdit Light Levels...",tooltip:"Edit §7data.custom_spawn_rules§r",on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"equipment_chances",label:"§bEdit Slot Drop Chances...",tooltip:"§7data.equipment.slot_drop_chances§r\n Only valid if you are using the equipment tag for this spawn potential",on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:'say $(entity)'}},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"say -$(this)"}},\
    ]\
}

return 1

#dialog show @s {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Edit Potential["},{text:"0",color:"green"},"]..."],\
    columns:2,\
    inputs:[\
        {type:"number_range",key:"weight",start:1,end:1000,initial:1,label:"weight",step:1,width:400},\
        {type:"text",key:"entity",label:"§bEntity§7 (data.entity)",initial:"",width:400,label_visible:true,multiline:{height:180},max_length:2147483647},\
        {type:"text",key:"loot_table",label:"§bEquipment Loot Table§7 (data.equipment.loot_table)",initial:"",width:400,label_visible:true,max_length:2147483647},\
    ],\
    actions:[\
        {id:"light_levels",label:"§bEdit Light Levels...",tooltip:"Edit §7data.custom_spawn_rules§r",on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"equipment_chances",label:"§bEdit Slot Drop Chances...",tooltip:"§7data.equipment.slot_drop_chances§r\n Only valid if you are using the equipment tag for this spawn potential",on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:"say $(entity)"}},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"say -$(this)"}},\
    ]\
}

