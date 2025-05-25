data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:"§6[DaBsu]§r Main Menu",\
    columns:2,\
    body:[{type:"plain_message",contents:"§lMain Menu"}],\
    actions:[\
        {label:{text:"Select Spawners...",color:"#fdffcf"},tooltip:"Select a group of spawners",width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1001"}},\
        {label:{text:"Modify Selection...",color:"#fdffcf"},tooltip:"Modify existing selection by removing some of the spawners from selection or take its intersection with another selection.",width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1002"}},\
        {label:{text:"Edit Selected Spawners...",color:"#c0f9ff"},width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1004"}},\
        {label:{text:"Cancel Selection",color:"#ffe3ce"},tooltip:"Remove selection",width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1003"}},\
        {label:{text:"Get Placeable Spawner",color:"#cedeff"},tooltip:"Get a placeable spawner from a spawn egg, an entity, or another spawner",width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1005"}},\
        {label:{text:"Spawn Server Enderchest",color:"#ffdefd"},tooltip:"Spawn a chest minecart.\nThis is a ender chest that is shared and synced for all players in the server in realtime.",width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1006"}},\
        {label:{text:"Global Settings..."},width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1007"}},\
        {label:{text:"Personal Settings..."},width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1008"}},\
        {label:{text:"Update and Optimize"},tooltip:"This updates all registered spawners and check if they have been changed. \nNew SpawnPotential type ids will be assigned as the data get regenerated to delete unused data.",width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1009"}},\
        {label:{text:"Start Scan & Registering",color:"#c2ffeb"},width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1012"}},\
        {label:{text:"GitHub & Repot Issues",color:"#d9ffdc"},width:180,on_click:{action:"open_url",url:"https://github.com/Dahesor/Batch-Spawner-Utils"}},\
    ],\
}

return 1

dialog show @s {type:"minecraft:multi_action",\
    title:"§6[DaBsu]§r Main Menu",\
    columns:1,\
    body:[{type:"plain_message",contents:""}],\
    actions:[\
        {label:{text:"Select Spawners...",color:"#ffe1ae"},width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 101"}},\
        {label:{text:"Edit Selected Spawners...",color:"#aef7ff"},width:180,on_click:{action:"run_command",command:"/trigger trigger.dabsu set 101"}},\
        {label:{"translate": "options.language"},width:180,on_click:{action:"show_dialog",dialog:"dabsu:language"}},\
    ]\
}