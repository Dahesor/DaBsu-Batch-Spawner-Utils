data modify storage dabsu:run dialog.test set value {type:"dialog_list",}

#return 1

dialog show @s {type:"minecraft:multi_action_input_form",\
    title:"§6[DaBsu]§r Edit §nMultiple§r Spawners' Properties...",\
    body:[{type:"plain_message",contents:"§dLeave Empty to Remain Same"}],\
    columns:2,\
    inputs:[\
        {type:"text",key:"this",label:"§bSpawnCount§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"this",label:"§bSpawnRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"this",label:"§bRequiredPlayerRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"this",label:"§bMin/§aMax§bSpawnDelay§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"this",label:"§bMaxSpawnDelay§r",initial:"",width:140,label_visible:false,max_length:5},\
        {type:"text",key:"this",label:"§bMaxNearbyEntities§r",initial:"",width:140,label_visible:true,max_length:5},\
    ],\
    actions:[\
        {id:"ds",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"ds",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:"/say $(this)"}},\
    ]\
}

