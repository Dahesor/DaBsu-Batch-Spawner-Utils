data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"[DaBsu] ",color:"gold"},{text:"Quick Edit",color:"light_purple"},{text:" Edit Common Tags",color:"white"}],\
    columns: 1,can_close_with_escape:true,after_action:"none",pause:false,\
    actions:[\
        {label:{text:"Base Attributes"},action:{type:"run_command",command:"/trigger trigger.dabsu set 111"},width:200},\
        {label:{text:"Equipments"},action:{type:"run_command",command:"/trigger trigger.dabsu set 112"},width:200},\
        {label:{translate:"gui.cancel"},width:200,action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}}\
    ],\
}

##lang
data modify storage dabsu:run dialog.dialog.title[1].text set from storage dabsu:run lang.this.menu_templates_common_tags_1
data modify storage dabsu:run dialog.dialog.title[2].text set from storage dabsu:run lang.this.menu_templates_common_tags_2
data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.menu_templates_common_tags_3
data modify storage dabsu:run dialog.dialog.actions[1].label.text set from storage dabsu:run lang.this.menu_templates_common_tags_4