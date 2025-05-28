data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Edit Potential["},{text:"0",color:"green"},"]..."],\
    columns:3,can_close_with_escape:true,after_action:"none",pause:false,\
    inputs:[\
        {type:"number_range",key:"weight",start:1,end:1000,initial:100,label:"weight",step:1,width:400},\
        {type:"text",key:"entity",label:"§bEntity§7 (data.entity)",initial:"{}",width:400,label_visible:true,multiline:{height:150},max_length:2147483647},\
        {type:"text",key:"loot_table",label:"§bEquipment§7 (data.equipment) §a Leave it to §7\"{}\"§a to omit",initial:"{}",width:400,label_visible:true,max_length:2147483647},\
    ],\
    actions:[\
        {label:"§bEdit Common Tags",tooltip:"Edit Some of the common tags",action:{type:"dynamic/run_command",template:"say -$(none)"},width:110},\
        {label:"§bEdit Light Levels",tooltip:"Edit §7data.custom_spawn_rules§r",action:{type:"dynamic/run_command",template:"say -$(none)"},width:110},\
        {label:{translate:"selectWorld.delete",color:"red"},tooltip:"Delete This Entry",action:{type:"dynamic/run_command",template:"say -$(none)"},width:110},\
        {label:{translate:"selectServer.edit",color:"green"},action:{type:"dynamic/run_command",template:'-$(none)'},width:110},\
        {label:{translate:"gui.cancel"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"},width:110},\
    ]\
}

return 1