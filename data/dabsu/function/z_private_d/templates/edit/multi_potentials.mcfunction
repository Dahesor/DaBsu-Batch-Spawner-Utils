data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select Potential..."}],\
    body:{type:"plain_message",width:300,contents:"Since selection includes spawners with different SpawnPotentials, you cannot edit each potential in detail. You may only make overall changes.\n To edit potentials in detail for multiple spawners, make sure that your selection only contains spawners with the same SpawnPotentials"},\
    columns:1,can_close_with_escape:true,after_action:"none",pause:false,\
    actions:[\
        {label:{text:"Overwrite All Light Requirements...",color:"#dbfeff"},width:300,tooltip:"Overwrite sky and block light limit for all potentials in all selected spawners",action:{type:"run_command",command:"/trigger trigger.dabsu set 1210"}},\
        {label:{text:"Merge Each Entry With...",color:"#ffb7fe"},width:300,tooltip:"Merge any NBT into every SpawnPotential entry of every selected spawner",action:{type:"run_command",command:"/trigger trigger.dabsu set 1211"}},\
        {label:{text:"Replace SpawnPotential NBT With...",color:"#ffe1b7"},width:300,tooltip:"Replace the §7SpawnPotentials§r key in all selected spawners with your input",action:{type:"run_command",command:"/trigger trigger.dabsu set 1212"}},\
        {label:{text:"Append To All With...",color:"#dbffc8"},width:300,tooltip:"Append a new SpawnPotential entry to all selected spawners",action:{type:"run_command",command:"/trigger trigger.dabsu set 1220"}},\
    ],\
    exit_action:{label:{translate:"gui.back"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1004"}}\
}

#Lang
data modify storage dabsu:run dialog.dialog.title[0].text set from storage dabsu:run lang.this.temp_select_potential_1
data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.temp_edit_multi_potentials_1
data modify storage dabsu:run dialog.dialog.actions[1].label.text set from storage dabsu:run lang.this.temp_edit_multi_potentials_2
data modify storage dabsu:run dialog.dialog.actions[2].label.text set from storage dabsu:run lang.this.temp_edit_multi_potentials_3
data modify storage dabsu:run dialog.dialog.actions[3].label.text set from storage dabsu:run lang.this.temp_edit_multi_potentials_4
data modify storage dabsu:run dialog.dialog.body.contents set from storage dabsu:run lang.this.temp_edit_multi_potentials_5

data modify storage dabsu:run dialog.dialog.actions[0].tooltip set from storage dabsu:run lang.this.temp_edit_multi_potentials_1_tip
data modify storage dabsu:run dialog.dialog.actions[1].tooltip set from storage dabsu:run lang.this.temp_edit_multi_potentials_2_tip
data modify storage dabsu:run dialog.dialog.actions[2].tooltip set from storage dabsu:run lang.this.temp_edit_multi_potentials_3_tip
data modify storage dabsu:run dialog.dialog.actions[3].tooltip set from storage dabsu:run lang.this.temp_edit_multi_potentials_4_tip