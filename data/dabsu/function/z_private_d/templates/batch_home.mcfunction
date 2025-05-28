data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:"[DaBsu] Edit Selected Spawners",\
    columns:1,can_close_with_escape:true,after_action:"none",pause:false,\
    body:[{type:"plain_message",contents:"",width:400}],\
    actions:[\
        {label:{text:"Set Next Spawn Time...",color:"#fffdd3"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1201"}},\
        {label:{text:"Edit Properties...",color:"#cdffff"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1202"}},\
        {label:{text:"Edit SpawnPotentials...",color:"#cdffff"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1203"}},\
        {label:{text:"Run Any Command...",color:"#aeffdd"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1204"}},\
        {label:{text:"Cancel Selection",color:"#ffacac"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1205"}},\
    ],\
    exit_action:{label:{translate:"gui.back"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1000"}}\
}

return 1

dialog show @s {type:"minecraft:multi_action",\
    title:"[DaBsu] Edit Selected Spawners",\
    columns:1,\
    body:[{type:"plain_message",contents:"",width:400}],\
    actions:[\
        {label:{text:"Set Next Spawn Time...",color:"#fffdd3"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1201"}},\
        {label:{text:"Edit Properties...",color:"#cdffff"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1202"}},\
        {label:{text:"Edit SpawnPotentials...",color:"#cdffff"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1203"}},\
        {label:{text:"Run Any Command...",color:"#aeffdd"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1204"}},\
        {label:{text:"Cancel Selection",color:"#ffacac"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 1205"}},\
    ],\
    exit_action:{label:{translate:"gui.back"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1000"}}\
}