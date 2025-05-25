data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Select by entity nbt="}],\
    columns:3,\
    inputs:[\
        {type:"boolean",key:"add",on_true:"add",on_false:"set",initial:0b,label:"Add to selection instead of replace"},\
        {type:"text",key:"nbt",label:"§bnbt=§7 Entity in one potential passing will select the wntire spawner",initial:"{}",width:400,label_visible:true,multiline:{height:160},max_length:2147483647},\
    ],\
    actions:[\
        {id:"select",label:"§bSelect",tooltip:"Click to start checking",on_submit:{type:"command_template",template:"function dabsu:z_private_d/batch/link/select/nbt_$(add) {form:$(nbt)}"},width:120},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1001$(none)"},width:120},\
    ]\
}

return 1