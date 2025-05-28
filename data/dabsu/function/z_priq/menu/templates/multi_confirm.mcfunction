data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:{text:"[DaBsu] Confirm?",color:"red"},can_close_with_escape:true,after_action:"none",pause:false,\
    columns: 1,can_close_with_escape:true,after_action:"none",pause:false,\
    body:{type:"plain_message",width:400,contents:[{text:"Are You Sure?",bold:true},"\nMessage"]},\
    actions:[\
        {label:{text:"This",color:"gold",},action:{type:"run_command",command:"/say NULL"},width:200},\
        {label:{text:"Multi",color:"gold",},action:{type:"run_command",command:"/say NULL"},width:200},\
        {label:{translate:"gui.cancel"},width:200,action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}}\
    ],\
}