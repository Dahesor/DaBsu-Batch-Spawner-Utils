data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:"[DaBsu] Edit Spawner Properties...",\
    columns:2,pause:false,can_close_with_escape:true,after_action:"none",\
    inputs:[\
        {type:"text",key:"SpawnCount",label:"§bSpawnCount§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"SpawnRange",label:"§bSpawnRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"RequiredPlayerRange",label:"§bRequiredPlayerRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"MinSpawnDelay",label:"§bMin/§aMax§bSpawnDelay§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"MaxSpawnDelay",label:"§bMaxSpawnDelay§r",initial:"",width:140,label_visible:false,max_length:5},\
        {type:"text",key:"MaxNearbyEntities",label:"§bMaxNearbyEntities§r",initial:"",width:140,label_visible:true,max_length:5},\
    ],\
    actions:[\
        {label:{translate:"selectServer.edit",color:"green"},action:{type:"dynamic/run_command",template:"return fail$(null)"}},\
        {label:{translate:"gui.cancel"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
    ]\
}


return 1

dialog show @s {type:"minecraft:multi_action",\
    title:"[DaBsu] Edit Spawner Properties...",\
    columns:2,pause:false,can_close_with_escape:true,exit_action:{label:"cancel"},after_action:"close",\
    inputs:[\
        {type:"text",key:"SpawnCount",label:"§bSpawnCount§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"SpawnRange",label:"§bSpawnRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"RequiredPlayerRange",label:"§bRequiredPlayerRange§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"MinSpawnDelay",label:"§bMin/§aMax§bSpawnDelay§r",initial:"",width:140,label_visible:true,max_length:5},\
        {type:"text",key:"MaxSpawnDelay",label:"§bMaxSpawnDelay§r",initial:"",width:140,label_visible:false,max_length:5},\
        {type:"text",key:"MaxNearbyEntities",label:"§bMaxNearbyEntities§r",initial:"",width:140,label_visible:true,max_length:5},\
    ],\
    actions:[\
        {label:{translate:"selectServer.edit",color:"green"},action:{type:"dynamic/run_command",template:"return fail$(null)"}},\
        {label:{translate:"gui.cancel"}},\
    ]\
}