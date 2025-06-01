data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Modify Selection"}],\
    columns:3,can_close_with_escape:true,after_action:"none",pause:false,\
    inputs:[\
        {type:"minecraft:single_option",key:"mode",options:[{id:"1",initial:1b,display:{text:"Remove From Selection",color:"#ffb4b4"}},{id:"2",initial:0b,display:{text:"Take Intersection",color:"#dfffb4"}}],label:{text:"Mode"},label_visible:true,width:300},\
        {type:"number_range",key:"range",start:1,end:500,initial:20,label:"Range For \"...Using Range Selection\"",step:1,width:400},\
        {type:"text",key:"pos1",label:"§bCuboid Select Pos 1 §7e.g. §a 18 86 8",initial:"",width:200,label_visible:true,max_length:25},\
        {type:"text",key:"pos2",label:"§bCuboid Select Pos 2 §7e.g. §a 38 -4 -16",initial:"",width:200,label_visible:true,max_length:25},\
    ],\
    actions:[\
        {label:"Set Cuboid Pos 1",tooltip:"Set pos 1 of cuboid selection to your current position",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1103$(none)"}},\
        {label:"Set Cuboid Pos 2",tooltip:"Set pos 2 of cuboid selection to your current position",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1104$(none)"}},\
        {label:""},\
        {label:{text:"...Using Cuboid Selection",color:"#aeffff"},tooltip:"Select all registered spawners within the cuboid bounded by pos 1 and pos 2 in the current dimension. \n§aUnloaded spawners included",action:{type:"dynamic/run_command",template:"function dabsu:z_private_d/batch/link/mod_select/from_cuboid {form:{pos1:'$(pos1)',pos2:'$(pos2)',index:$(mode)}}"}},\
        {label:{text:"...Using Range Selection",color:"#aeffff"},tooltip:"Select all registered spawners within the range difined by the number slidebar.\n§cLoaded spawners only",action:{type:"dynamic/run_command",template:"function dabsu:z_private_d/batch/link/mod_select/r_$(mode) {r:$(range)}"}},\
        {label:{text:"...Using nbt= Check",color:"#aeffff"},tooltip:"Select all spawners that has at least one entity passing a §anbt=§r check (like the one in entity selector argument) using the compound tag you input \n§aUnloaded spawners included\n§aWorks Across Dimensions",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1146$(none)"}},\
        {label:{text:"...Using Same Potential Selection",color:"#aeffff"},tooltip:"Select all registered spawners that have the same §7SpawnPotentials§r as the spawner §byou are standing on§r. \n§aUnloaded spawners included \n§aWorks Across Dimensions",action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 115$(mode)"},width:200},\
    ]\
}

##Lang
data modify storage dabsu:run dialog.dialog.actions[0].tooltip set from storage dabsu:run lang.this.temp_modify_selection_1_tip
data modify storage dabsu:run dialog.dialog.actions[1].tooltip set from storage dabsu:run lang.this.temp_modify_selection_2_tip
data modify storage dabsu:run dialog.dialog.actions[3].tooltip set from storage dabsu:run lang.this.temp_modify_selection_4_tip
data modify storage dabsu:run dialog.dialog.actions[4].tooltip set from storage dabsu:run lang.this.temp_modify_selection_5_tip
data modify storage dabsu:run dialog.dialog.actions[5].tooltip set from storage dabsu:run lang.this.temp_modify_selection_6_tip
data modify storage dabsu:run dialog.dialog.actions[6].tooltip set from storage dabsu:run lang.this.temp_modify_selection_7_tip

data modify storage dabsu:run dialog.dialog.inputs[0].label set from storage dabsu:run lang.this.temp_modify_selection_4
data modify storage dabsu:run dialog.dialog.inputs[0].options[0].display.text set from storage dabsu:run lang.this.temp_modify_selection_2
data modify storage dabsu:run dialog.dialog.inputs[0].options[1].display.text set from storage dabsu:run lang.this.temp_modify_selection_3
data modify storage dabsu:run dialog.dialog.inputs[1].label set from storage dabsu:run lang.this.temp_modify_selection_1_lab
data modify storage dabsu:run dialog.dialog.inputs[2].label set from storage dabsu:run lang.this.temp_modify_selection_2_lab
data modify storage dabsu:run dialog.dialog.inputs[3].label set from storage dabsu:run lang.this.temp_modify_selection_3_lab
data modify storage dabsu:run dialog.dialog.title set from storage dabsu:run lang.this.temp_select_spawners_1
data modify storage dabsu:run dialog.dialog.actions[0].label set from storage dabsu:run lang.this.temp_modify_selection_4_lab
data modify storage dabsu:run dialog.dialog.actions[1].label set from storage dabsu:run lang.this.temp_modify_selection_5_lab
data modify storage dabsu:run dialog.dialog.actions[3].label.text set from storage dabsu:run lang.this.temp_modify_selection_5
data modify storage dabsu:run dialog.dialog.actions[4].label.text set from storage dabsu:run lang.this.temp_modify_selection_6
data modify storage dabsu:run dialog.dialog.actions[5].label.text set from storage dabsu:run lang.this.temp_modify_selection_7
data modify storage dabsu:run dialog.dialog.actions[6].label.text set from storage dabsu:run lang.this.temp_modify_selection_8