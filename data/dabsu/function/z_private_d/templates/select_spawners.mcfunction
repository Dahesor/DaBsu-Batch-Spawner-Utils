data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select Spawners"}],\
    columns:3,can_close_with_escape:true,after_action:"none",pause:false,\
    inputs:[\
        {type:"boolean",key:"add",on_true:"2",on_false:"1",initial:0b,label:"Add to selection instead of replace"},\
        {type:"number_range",key:"range",start:1,end:500,initial:20,label:"Range For \"Select Within Range\"",step:1,width:400},\
        {type:"text",key:"pos1",label:"§bCuboid Select Pos 1 §7e.g. §a 18 86 8",initial:"",width:200,label_visible:true,max_length:25},\
        {type:"text",key:"pos2",label:"§bCuboid Select Pos 2 §7e.g. §a 38 -4 -16",initial:"",width:200,label_visible:true,max_length:25},\
    ],\
    actions:[\
        {label:"Set Cuboid Pos 1",tooltip:"Set pos 1 of cuboid selection to your current position",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1101$(none)"}},\
        {label:"Set Cuboid Pos 2",tooltip:"Set pos 2 of cuboid selection to your current position",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1102$(none)"}},\
        {label:"Fast Cuboid Selection",tooltip:"Pos 1 and Pos 2 will be set to the position of your next 2 right clicks with the wand",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1105$(none)"}},\
        {label:{text:"Select By Cuboid",color:"#aeffff"},tooltip:"Select all registered spawners within the cuboid bounded by pos 1 and pos 2 in the current dimension. \n§aUnloaded spawners included",action:{type:"dynamic/run_command",template:"function dabsu:z_private_d/batch/link/cuboid {form:{pos1:'$(pos1)',pos2:'$(pos2)',index:$(add)}}"}},\
        {label:{text:"Select Within Range",color:"#aeffff"},tooltip:"Select all registered spawners within the range difined by the number slidebar.\n§cLoaded spawners only",action:{type:"dynamic/run_command",template:"function dabsu:z_private_d/batch/link/range_$(add) {r:$(range)}"}},\
        {label:{text:"Select by nbt= Check",color:"#aeffff"},tooltip:"Select all spawners that has at least one entity passing a §anbt=§r check (like the one in entity selector argument) using the compound tag you input \n§aUnloaded spawners included\n§aWorks Across Dimensions",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1145$(none)"}},\
        {label:{text:"Select Same Potential",color:"#aeffff"},tooltip:"Select all registered spawners that have the same §7SpawnPotentials§r as the spawner §byou are standing on§r. \n§aUnloaded spawners included \n§aWorks Across Dimensions",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 113$(add)"},width:170},\
        {label:{text:"Select All",color:"#aeffff"},tooltip:"Select all registered spawners. \n§aUnloaded spawners included\n§aWorks Across Dimensions",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 114$(add)"},width:170},\
    ]\
}

##Lang
data modify storage dabsu:run dialog.dialog.actions[0].tooltip set from storage dabsu:run lang.this.temp_modify_selection_1_tip
data modify storage dabsu:run dialog.dialog.actions[1].tooltip set from storage dabsu:run lang.this.temp_modify_selection_2_tip
data modify storage dabsu:run dialog.dialog.actions[2].tooltip set from storage dabsu:run lang.this.temp_modify_selection_8_tip
data modify storage dabsu:run dialog.dialog.actions[3].tooltip set from storage dabsu:run lang.this.temp_modify_selection_4_tip
data modify storage dabsu:run dialog.dialog.actions[4].tooltip set from storage dabsu:run lang.this.temp_modify_selection_5_tip
data modify storage dabsu:run dialog.dialog.actions[5].tooltip set from storage dabsu:run lang.this.temp_modify_selection_6_tip
data modify storage dabsu:run dialog.dialog.actions[6].tooltip set from storage dabsu:run lang.this.temp_modify_selection_7_tip
data modify storage dabsu:run dialog.dialog.actions[7].tooltip set from storage dabsu:run lang.this.temp_select_spawners_1_tip

data modify storage dabsu:run dialog.dialog.inputs[0].label set from storage dabsu:run lang.this.temp_select_spawners_1_lab
data modify storage dabsu:run dialog.dialog.inputs[1].label set from storage dabsu:run lang.this.temp_select_spawners_2_lab
data modify storage dabsu:run dialog.dialog.inputs[2].label set from storage dabsu:run lang.this.temp_modify_selection_2_lab
data modify storage dabsu:run dialog.dialog.inputs[3].label set from storage dabsu:run lang.this.temp_modify_selection_3_lab
data modify storage dabsu:run dialog.dialog.title set from storage dabsu:run lang.this.temp_select_spawners_1
data modify storage dabsu:run dialog.dialog.actions[0].label set from storage dabsu:run lang.this.temp_modify_selection_4_lab
data modify storage dabsu:run dialog.dialog.actions[1].label set from storage dabsu:run lang.this.temp_modify_selection_5_lab
data modify storage dabsu:run dialog.dialog.actions[2].label set from storage dabsu:run lang.this.temp_modify_selection_6_lab
data modify storage dabsu:run dialog.dialog.actions[3].label.text set from storage dabsu:run lang.this.temp_select_spawners_2
data modify storage dabsu:run dialog.dialog.actions[4].label.text set from storage dabsu:run lang.this.temp_select_spawners_3
data modify storage dabsu:run dialog.dialog.actions[5].label.text set from storage dabsu:run lang.this.temp_select_spawners_4
data modify storage dabsu:run dialog.dialog.actions[6].label.text set from storage dabsu:run lang.this.temp_select_spawners_5
data modify storage dabsu:run dialog.dialog.actions[7].label.text set from storage dabsu:run lang.this.temp_select_spawners_6
