data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select Potential..."}],\
    columns:3,can_close_with_escape:true,after_action:"none",pause:false,\
    actions:[\
        {label:{text:"Light Limit...",color:"#a4fdff"},width:100,tooltip:"Overwrite sky and block light limit for all potentials",action:{type:"run_command",command:"/trigger trigger.dabsu set 190"}},\
        {label:{text:"Merge to All...",color:"#ffc575"},width:100,tooltip:"Merge a SNBT to every spawn entry",action:{type:"run_command",command:"/trigger trigger.dabsu set 191"}},\
        {label:{text:"Edit Full NBT...",color:"#ffa4a4"},width:100,tooltip:"Edit the §7SpawnPotentials§r key as a whole",action:{type:"run_command",command:"/trigger trigger.dabsu set 192"}},\
        {label:{text:"[+]",color:"green",bold:true},width:90,tooltip:"Append a new potential",action:{type:"run_command",command:"/trigger trigger.dabsu set 104"}},\
    ]\
}


##lang
data modify storage dabsu:run dialog.dialog.title[0].text set from storage dabsu:run lang.this.temp_select_potential_1
data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.temp_select_potential_2
data modify storage dabsu:run dialog.dialog.actions[1].label.text set from storage dabsu:run lang.this.temp_select_potential_3
data modify storage dabsu:run dialog.dialog.actions[2].label.text set from storage dabsu:run lang.this.temp_select_potential_4
data modify storage dabsu:run dialog.dialog.actions[0].tooltip set from storage dabsu:run lang.this.temp_select_potential_1_tip
data modify storage dabsu:run dialog.dialog.actions[1].tooltip set from storage dabsu:run lang.this.temp_select_potential_2_tip
data modify storage dabsu:run dialog.dialog.actions[2].tooltip set from storage dabsu:run lang.this.temp_select_potential_3_tip
data modify storage dabsu:run dialog.dialog.actions[3].tooltip set from storage dabsu:run lang.this.temp_select_potential_4_tip