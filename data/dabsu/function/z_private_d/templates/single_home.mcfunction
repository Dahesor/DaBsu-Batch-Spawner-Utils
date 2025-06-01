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

## Lang
data modify storage dabsu:run dialog.dialog.title set from storage dabsu:run lang.this.spawner_manu
data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.temp_single_home_4
data modify storage dabsu:run dialog.dialog.body[1].description.contents set from storage dabsu:run lang.this.temp_single_home_5

data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.temp_single_home_1
data modify storage dabsu:run dialog.dialog.actions[1].label.text set from storage dabsu:run lang.this.temp_single_home_2
data modify storage dabsu:run dialog.dialog.actions[2].label.text set from storage dabsu:run lang.this.temp_batch_home_2
data modify storage dabsu:run dialog.dialog.actions[3].label.text set from storage dabsu:run lang.this.temp_batch_home_3
#Run Spawn Analysis
data modify storage dabsu:run dialog.dialog.actions[4].label.text set from storage dabsu:run lang.this.temp_single_home_3
data modify storage dabsu:run dialog.dialog.actions[4].tooltip set from storage dabsu:run lang.this.ana_tip

data modify storage dabsu:run dialog.dialog.actions[5].label set from storage dabsu:run lang.this.temp_single_home_1_lab