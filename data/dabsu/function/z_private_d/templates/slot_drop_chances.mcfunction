data modify storage dabsu:run dialog.test set value {type:"dialog_list",}

#return 1
dialog show @s {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Edit Slot Drop Chances..."}],\
    body:[{type:"plain_message",contents:{text:"SELECdTd",click_event:{action:"open_url",url:"https://www.google.com"},hover_event:{action:"show_text",value:"dsasdasdsd"}}}],\
    columns:2,\
    inputs:[\
        {type:"number_range",key:"mainhand",start:0,end:100,initial:0,label:"Mainhand％",step:1,width:260},\
        {type:"number_range",key:"offhand",start:0,end:100,initial:0,label:"Offhand％",step:1,width:260},\
        {type:"number_range",key:"head",start:0,end:100,initial:0,label:"Head％",step:1,width:260},\
        {type:"number_range",key:"chest",start:0,end:100,initial:0,label:"Chest％",step:1,width:260},\
        {type:"number_range",key:"legs",start:0,end:100,initial:0,label:"Legs％",step:1,width:260},\
        {type:"number_range",key:"feet",start:0,end:100,initial:0,label:"Feet％",step:1,width:260},\
        {type:"number_range",key:"body",start:0,end:100,initial:0,label:"Body％",step:1,width:260},\
        {type:"number_range",key:"saddle",start:0,end:100,initial:0,label:"Saddle％",step:1,width:260},\
    ],\
    actions:[\
        {id:"ds",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"ds",label:{translate:"gui.done",color:"aqua"},on_submit:{type:"command_template",template:"/say $(this)"}},\
    ]\
}

data get storage dabsu:run element.data.equipment
