data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"[DaBsu] ",color:"gold"},{text:"Quick Edit",color:"light_purple"},{text:" Edit Common Tags",color:"white"}],\
    columns: 1,can_close_with_escape:true,after_action:"none",pause:false,\
    actions:[\
        {label:{text:"Base Attributes"},action:{type:"run_command",command:"/trigger trigger.dabsu set 111"},width:200},\
        {label:{text:"Equipments"},action:{type:"run_command",command:"/say NULL"},width:200},\
        {label:{translate:"gui.cancel"},width:200,action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}}\
    ],\
}