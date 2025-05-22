data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:"[DaBsu] Edit Spawner Properties...",\
    columns:2,\
    inputs:[\
        {type:"text",key:"SpawnCount",label:"§bSpawnCount§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"SpawnRange",label:"§bSpawnRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"RequiredPlayerRange",label:"§bRequiredPlayerRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"MinSpawnDelay",label:"§bMin/§aMax§bSpawnDelay§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"MaxSpawnDelay",label:"§bMaxSpawnDelay§r",initial:"",width:140,label_visible:false,max_length:5},\
        {type:"text",key:"MaxNearbyEntities",label:"§bMaxNearbyEntities§r",initial:"",width:140,label_visible:true,max_length:5},\
    ],\
    actions:[\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:"return fail$(null)"}},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"return fail$(null)"}},\
    ]\
}


return 1

dialog show @s {type:"minecraft:multi_action_input_form",\
    title:"[DaBsu] Edit Spawner Properties...",\
    columns:2,\
    inputs:[\
        {type:"text",key:"SpawnCount",label:"§bSpawnCount§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"SpawnRange",label:"§bSpawnRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"RequiredPlayerRange",label:"§bRequiredPlayerRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"MinSpawnDelay",label:"§bMin/§aMax§bSpawnDelay§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"MaxSpawnDelay",label:"§bMaxSpawnDelay§r",initial:"",width:140,label_visible:false,max_length:5},\
        {type:"text",key:"MaxNearbyEntities",label:"§bMaxNearbyEntities§r",initial:"",width:140,label_visible:true,max_length:5},\
    ],\
    actions:[\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:"/say $(this)"}},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"say -$(this)"}},\
    ]\
}