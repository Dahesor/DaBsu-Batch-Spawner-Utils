data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:{text:"§6[DaBsu]§r Merge to Each Potential..."},\
    columns:2,can_close_with_escape:true,after_action:"none",pause:false,\
    body:{type:"plain_message",contents:"Leave any input to §a\"{}\"§r to not change it.",width:400},\
    inputs:[\
        {type:"text",key:"entity",label:"§bMerge to§7 \"data.entity\"",initial:"{}",width:400,label_visible:true,multiline:{height:120},max_length:2147483647},\
        {type:"text",key:"equipment",label:"§bMerge to §7\"data.equipment\"",initial:"{}",width:400,label_visible:true,max_length:2147483647},\
    ],\
    actions:[\
        {label:{translate:"selectServer.edit",color:"green"},action:{type:"dynamic/run_command",template:'function dabsu:z_private_d/batch/link/pots/merge_to_all {form:{entity:$(entity),equipment:$(equipment)}}'}},\
        {label:{translate:"gui.cancel"},action:{type:"run_command",command:"trigger trigger.dabsu set 1203"}}\
    ],\
}

data modify storage dabsu:run dialog.dialog.title.text set from storage dabsu:run lang.this.temp_edit_multi_merge_1
data modify storage dabsu:run dialog.dialog.body.contents set from storage dabsu:run lang.this.menu_merge_all_2
data modify storage dabsu:run dialog.dialog.inputs[0].label set from storage dabsu:run lang.this.temp_edit_multi_merge_1_lab
data modify storage dabsu:run dialog.dialog.inputs[1].label set from storage dabsu:run lang.this.temp_edit_multi_merge_2_lab