data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r ssSelect by entity nbt="}],\
    columns:3,can_close_with_escape:true,after_action:"none",pause:false,\
    inputs:[\
        {type:"minecraft:single_option",key:"mode",options:[{id:"remove",initial:1b,display:{text:"Remove From Selection",color:"#ffb4b4"}},{id:"intersect",initial:0b,display:{text:"Take Intersection",color:"#dfffb4"}}],label:{text:"Mode"},label_visible:true,width:300},\
        {type:"text",key:"nbt",label:"§bnbt=§7 Entity in one potential passing will select the wntire spawner",initial:"{}",width:400,label_visible:true,multiline:{height:160},max_length:2147483647},\
    ],\
    actions:[\
        {label:"§bSelect",tooltip:"Click to start checking",action:{type:"dynamic/run_command",template:"function dabsu:z_private_d/batch/link/select/nbt_$(mode) {form:$(nbt)}"},width:120},\
        {label:{translate:"gui.cancel"},action:{type:"run_command",command:"trigger trigger.dabsu set 1"},width:120},\
    ]\
}

return 1