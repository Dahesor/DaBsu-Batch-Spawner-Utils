data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select by entity nbt="}],\
    columns:3,can_close_with_escape:true,after_action:"none",pause:false,\
    inputs:[\
        {type:"minecraft:single_option",key:"mode",options:[{id:"remove",initial:1b,display:{text:"Remove From Selection",color:"#ffb4b4"}},{id:"intersect",initial:0b,display:{text:"Take Intersection",color:"#dfffb4"}}],label:{text:"Mode"},label_visible:true,width:300},\
        {type:"text",key:"nbt",label:"§bnbt=§7 Entity in one potential passing will select the entire spawner",initial:"{}",width:400,label_visible:true,multiline:{height:160},max_length:2147483647},\
    ],\
    actions:[\
        {label:"§bSelect",tooltip:"Click to start checking",action:{type:"dynamic/run_command",template:"function dabsu:z_private_d/batch/link/select/nbt_$(mode) {form:{obj:\"$(nbt)\"}}"},width:120},\
        {label:{translate:"gui.cancel"},action:{type:"run_command",command:"trigger trigger.dabsu set 1"},width:120},\
    ]\
}

##Lang

##lang
data modify storage dabsu:run dialog.dialog.title[0].text set from storage dabsu:run lang.this.temp_selection_by_nbt_1
data modify storage dabsu:run dialog.dialog.inputs[0].label.text set from storage dabsu:run lang.this.temp_modify_selection_4
data modify storage dabsu:run dialog.dialog.inputs[0].options[0].display.text set from storage dabsu:run lang.this.temp_modify_selection_2
data modify storage dabsu:run dialog.dialog.inputs[0].options[1].display.text set from storage dabsu:run lang.this.temp_modify_selection_3
data modify storage dabsu:run dialog.dialog.inputs[1].label set from storage dabsu:run lang.this.temp_selection_by_nbt_1_lab
data modify storage dabsu:run dialog.dialog.actions[0].tooltip set from storage dabsu:run lang.this.temp_selection_by_nbt_1_tip
data modify storage dabsu:run dialog.dialog.actions[0].label set from storage dabsu:run lang.this.temp_selection_by_nbt_2_lab