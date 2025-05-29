data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:"[DaBsu] Spawner Menu",\
    columns:1,can_close_with_escape:true,after_action:"none",pause:false,\
    body:[{type:"plain_message",contents:"§d§lQuick Edit"},{type:"item",description:{contents:"Spawner",width:400},item:{id:"spawner",components:{}},show_decorations:true}],\
    actions:[\
        {label:{text:"Copy Full Data",color:"#fffeae"},width:240,action:{type:"copy_to_clipboard",value:""}},\
        {label:{text:"Copy SpawnPotentials",color:"#fffeae"},width:240,action:{type:"copy_to_clipboard",value:""}},\
        {label:{text:"Edit Properties...",color:"#aeffff"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 101"}},\
        {label:{text:"Edit SpawnPotentials...",color:"#aeffff"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 102"}},\
        {label:{text:"Run Spawn Analysis",color:"#ffbcbc"},width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 103"},tooltip:"Run a 5 seconds long spawn analysis that shows you where mobs spawn.\n§dThis spawner will deselect it self from batch edit"},\
        {label:"Exit Quick Edit",width:240,action:{type:"run_command",command:"/trigger trigger.dabsu set 199"}},\
    ]\
}