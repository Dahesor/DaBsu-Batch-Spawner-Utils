data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:"[DaBsu] Run Any Command",can_close_with_escape:true,after_action:"none",pause:false,\
    body:[{type:"plain_message",width:450,contents:["","\n",{text:"",hover_event:{action:"show_text",value:"..."}}]}],\
    inputs:[\
        {key:"for_each",type:"boolean",label:"§bRun for each SpawnPotential",initial:false,on_true:"true",on_false:"false"},\
        {key:"cmd",type:"text",label:"§bCommand §f(No Slash; Escape needed for single qupte §a'§f)",max_length:2147483647,initial:"return 1",label_visible:true,width:400,multiline:{height:100}}\
    ],\
    actions:[\
        {label:{translate:"selectServer.edit",color:"green"},action:{type:"dynamic/run_command",template:"function dabsu:modify/custom {run:'$(cmd)',for_each:$(for_each)}"}},\
        {label:{translate:"gui.back"},action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1004$(none)"}},\
    ],\
}

#lang
data modify storage dabsu:run dialog.dialog.title set from storage dabsu:run lang.this.any_command
data modify storage dabsu:run dialog.dialog.body[0].contents[0] set from storage dabsu:run lang.this.temp_edit_any_command_1
data modify storage dabsu:run dialog.dialog.body[0].contents[2].text set from storage dabsu:run lang.this.run_cmd_for_each
data modify storage dabsu:run dialog.dialog.body[0].contents[2].hover_event.value set from storage dabsu:run lang.this.run_cmd_for_each_hover
data modify storage dabsu:run dialog.dialog.inputs[0].label set from storage dabsu:run lang.this.run_cmd_for_each_lable
data modify storage dabsu:run dialog.dialog.inputs[1].label set from storage dabsu:run lang.this.temp_edit_any_command_1_lab