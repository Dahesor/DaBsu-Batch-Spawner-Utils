data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Edit Light Rules..."}],\
    columns:2,can_close_with_escape:true,after_action:"none",pause:false,\
    inputs:[\
        {type:"boolean",key:"use",label:"Use Custom Spawn Rules",initial:true,on_true:"1",on_false:"0"},\
        {type:"number_range",key:"b_min",start:0,end:15,initial:0,label:"Min Block Light",step:1,width:200},\
        {type:"number_range",key:"b_max",start:0,end:15,initial:15,label:"Max Block Light",step:1,width:200},\
        {type:"number_range",key:"s_min",start:0,end:15,initial:0,label:"Min Sky Light",step:1,width:200},\
        {type:"number_range",key:"s_max",start:0,end:15,initial:15,label:"Max Sky Light",step:1,width:200},\
    ],\
    actions:[\
        {label:{translate:"gui.done",color:"aqua"},action:{type:"dynamic/run_command",template:"function dabsu:z_private_d/batch/link/pots/overrite_all_light {form:{index:$(use),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}"}},\
        {label:{translate:"gui.cancel"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
    ]\
}

##Lang
data modify storage dabsu:run dialog.dialog.title[0].text set from storage dabsu:run lang.this.temp_light_rules_1
data modify storage dabsu:run dialog.dialog.inputs[0].label set from storage dabsu:run lang.this.menu_new_element_2_lab
data modify storage dabsu:run dialog.dialog.inputs[1].label set from storage dabsu:run lang.this.menu_new_element_3_lab
data modify storage dabsu:run dialog.dialog.inputs[2].label set from storage dabsu:run lang.this.menu_new_element_4_lab
data modify storage dabsu:run dialog.dialog.inputs[3].label set from storage dabsu:run lang.this.menu_new_element_5_lab
data modify storage dabsu:run dialog.dialog.inputs[4].label set from storage dabsu:run lang.this.menu_new_element_6_lab