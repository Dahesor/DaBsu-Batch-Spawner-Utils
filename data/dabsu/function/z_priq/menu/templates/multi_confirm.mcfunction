data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:{text:"[DaBsu] Confirm?",color:"red"},can_close_with_escape:true,after_action:"none",pause:false,\
    columns: 1,can_close_with_escape:true,after_action:"none",pause:false,\
    body:{type:"plain_message",width:400,contents:[{text:"Are You Sure?",bold:true},"\nMessage"]},\
    actions:[\
        {label:{text:"This",color:"gold",},action:{type:"run_command",command:"/say NULL"},width:200},\
        {label:{translate:"gui.cancel"},width:200,action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}}\
    ],\
}

##Lang
data modify storage dabsu:run dialog.dialog.title.text set from storage dabsu:run lang.this.menu_templates_multi_confirm_1
data modify storage dabsu:run dialog.dialog.body.contents[0].text set from storage dabsu:run lang.this.menu_templates_multi_confirm_2