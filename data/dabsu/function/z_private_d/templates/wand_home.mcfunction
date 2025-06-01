data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:"§6[DaBsu]§r Main Menu",\
    columns:2,pause:false,can_close_with_escape:true,after_action:"none",\
    body:[{type:"plain_message",contents:"§lMain Menu"}],\
    actions:[\
        {label:{text:"Select Spawners...",color:"#fdffcf"},tooltip:"Select a group of spawners",width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1001"}},\
        {label:{text:"Modify Selection...",color:"#fdffcf"},tooltip:"Modify existing selection by removing some of the spawners from selection or take its intersection with another selection.",width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1002"}},\
        {label:{text:"Edit Selected Spawners...",color:"#c0f9ff"},width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1004"}},\
        {label:{text:"Cancel Selection",color:"#ffe3ce"},tooltip:"Remove selection",width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1003"}},\
        {label:{text:"Get Placeable Spawner",color:"#cedeff"},tooltip:"Get a placeable spawner from a spawn egg, an entity, or another spawner",width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1005"}},\
        {label:{text:"Spawn Server Enderchest",color:"#ffdefd"},tooltip:"Spawn a chest minecart.\nThis is a ender chest that is shared and synced for all players in the server in realtime.",width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1006"}},\
        {label:{text:"Global Settings..."},width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1007"}},\
        {label:{text:"Personal Settings..."},width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1008"}},\
        {label:{text:"Update and Optimize"},tooltip:"This updates all registered spawners and check if they have been changed. \nNew SpawnPotential type ids will be assigned as the data get regenerated to delete unused data.",width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1009"}},\
        {label:{text:"Start Scan & Registering",color:"#c2ffeb"},width:180,action:{type:"run_command",command:"/trigger trigger.dabsu set 1012"}},\
        {label:{text:"GitHub & Repot Issues",color:"#d9ffdc"},width:180,action:{type:"open_url",url:"https://github.com/Dahesor/Batch-Spawner-Utils"}},\
    ],\
}


## Lang
data modify storage dabsu:run dialog.dialog.actions[0].tooltip set from storage dabsu:run lang.this.temp_wand_home_1_tip
data modify storage dabsu:run dialog.dialog.actions[1].tooltip set from storage dabsu:run lang.this.temp_wand_home_2_tip
data modify storage dabsu:run dialog.dialog.actions[3].tooltip set from storage dabsu:run lang.this.temp_wand_home_3_tip
data modify storage dabsu:run dialog.dialog.actions[4].tooltip set from storage dabsu:run lang.this.temp_wand_home_4_tip
data modify storage dabsu:run dialog.dialog.actions[5].tooltip set from storage dabsu:run lang.this.temp_wand_home_5_tip
data modify storage dabsu:run dialog.dialog.actions[8].tooltip set from storage dabsu:run lang.this.temp_wand_home_6_tip


data modify storage dabsu:run dialog.dialog.title set from storage dabsu:run lang.this.main
data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.temp_wand_home_11
data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.temp_wand_home_1
data modify storage dabsu:run dialog.dialog.actions[1].label.text set from storage dabsu:run lang.this.temp_wand_home_2
data modify storage dabsu:run dialog.dialog.actions[2].label.text set from storage dabsu:run lang.this.temp_wand_home_3
data modify storage dabsu:run dialog.dialog.actions[3].label.text set from storage dabsu:run lang.this.temp_batch_home_5
data modify storage dabsu:run dialog.dialog.actions[4].label.text set from storage dabsu:run lang.this.temp_wand_home_4
data modify storage dabsu:run dialog.dialog.actions[5].label.text set from storage dabsu:run lang.this.temp_wand_home_5
data modify storage dabsu:run dialog.dialog.actions[6].label.text set from storage dabsu:run lang.this.temp_wand_home_6
data modify storage dabsu:run dialog.dialog.actions[7].label.text set from storage dabsu:run lang.this.temp_wand_home_7
data modify storage dabsu:run dialog.dialog.actions[8].label.text set from storage dabsu:run lang.this.temp_wand_home_8
data modify storage dabsu:run dialog.dialog.actions[9].label.text set from storage dabsu:run lang.this.temp_wand_home_9
data modify storage dabsu:run dialog.dialog.actions[10].label.text set from storage dabsu:run lang.this.temp_wand_home_10