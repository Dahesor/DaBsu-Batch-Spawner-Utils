data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:{text:"[DaBsu] Confirm?",color:"red"},\
    columns: 1,\
    body:{type:"plain_message",width:400,contents:[{text:"Are You Sure?",bold:true},"\nMessage"]},\
    actions:[\
        {label:{text:"This",color:"gold",},on_click:{action:"run_command",command:"/say NULL"},width:200},\
        {label:{text:"Multi",color:"gold",},on_click:{action:"run_command",command:"/say NULL"},width:200},\
        {label:{translate:"gui.cancel"},width:200}\
    ],\
}