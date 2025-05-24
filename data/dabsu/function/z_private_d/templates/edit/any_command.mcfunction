data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:"[DaBsu] Run Any Command",\
    body:{type:"plain_message",width:400,contents:"Run any command. Context: positioned at each spawner, as each spawner's marker entity"},\
    inputs:[\
        {key:"cmd",type:"text",label:"§bCommand §f(No Slash; Escape needed for single qupte §a'§f)",max_length:2147483647,initial:"return 1",label_visible:true,width:400,multiline:{max_lines:1,height:100}}\
    ],\
    actions:[\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:"function dabsu:modify/custom {run:'$(cmd)'}"}},\
        {id:"cancel",label:{translate:"gui.back"},on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1004$(none)"}},\
    ],\
}

return 1