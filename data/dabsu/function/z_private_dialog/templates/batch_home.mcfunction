data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:"[DaBsu] Edit Selected Spawners",\
    columns:1,\
    body:[{type:"plain_message",contents:""}],\
    actions:[\
        {label:{text:"Set Next Spawn Time...",color:"#fffdd3"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1201"}},\
        {label:{text:"Edit Properties...",color:"#cdffff"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1202"}},\
        {label:{text:"Edit SpawnPotentials...",color:"#cdffff"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1203"}},\
        {label:{text:"Run Any Command...",color:"#aeffdd"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1204"}},\
        {label:{text:"Destory or Unregister...",color:"#ff5555"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1205"}},\
    ],\
    on_cancel:{action:"run_command",command:"/trigger trigger.dabsu set 1000"}\
}

return 1

dialog show @s {type:"minecraft:multi_action",\
    title:"[DaBsu] Edit Selected Spawners",\
    columns:1,\
    body:[{type:"plain_message",contents:""}],\
    actions:[\
        {label:{text:"Set Next Spawn Time...",color:"#fffbae"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 101"}},\
        {label:{text:"Edit Properties...",color:"#aeffff"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 101"}},\
        {label:{text:"Edit SpawnPotentials...",color:"#aeffff"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 102"}},\
        {label:{text:"Run Any Command...",color:"#aeffdd"},width:240,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 102"}},\
    ]\
}