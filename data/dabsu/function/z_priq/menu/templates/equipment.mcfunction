data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",\
    title:[{text:"[DaBsu] ",color:"gold"},{text:"Entity Equipment",color:"white"}],\
    can_close_with_escape:true,after_action:"none",pause:false,\
    action:{label:{translate:"gui.done"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
    body:[\
        {type:"plain_message",contents:["                        ","§lMainhand","                        "],width:400},\
        {},\
        {type:"plain_message",contents:["                        ","§lOffhand","                        "],width:400},\
        {},\
        {type:"plain_message",contents:["                        ","§lHead","                        "],width:400},\
        {},\
        {type:"plain_message",contents:["                        ","§lChest","                        "],width:400},\
        {},\
        {type:"plain_message",contents:["                        ","§lLegs","                        "],width:400},\
        {},\
        {type:"plain_message",contents:["                        ","§lFeet","                        "],width:400},\
        {},\
        {type:"plain_message",contents:["                        ","§lBody","                        "],width:400},\
        {},\
        {type:"plain_message",contents:["                        ","§lSaddle","                        "],width:400},\
        {},\
    ]\
}

##Lang
data modify storage dabsu:run dialog.dialog.title[1].text set from storage dabsu:run lang.this.menu_templates_equipment_1
data modify storage dabsu:run dialog.dialog.body[0].contents[1] set from storage dabsu:run lang.this.menu_templates_equipment_2
data modify storage dabsu:run dialog.dialog.body[2].contents[1] set from storage dabsu:run lang.this.menu_templates_equipment_3
data modify storage dabsu:run dialog.dialog.body[4].contents[1] set from storage dabsu:run lang.this.menu_templates_equipment_4
data modify storage dabsu:run dialog.dialog.body[6].contents[1] set from storage dabsu:run lang.this.menu_templates_equipment_5
data modify storage dabsu:run dialog.dialog.body[8].contents[1] set from storage dabsu:run lang.this.menu_templates_equipment_6
data modify storage dabsu:run dialog.dialog.body[10].contents[1] set from storage dabsu:run lang.this.menu_templates_equipment_7
data modify storage dabsu:run dialog.dialog.body[12].contents[1] set from storage dabsu:run lang.this.menu_templates_equipment_8
data modify storage dabsu:run dialog.dialog.body[14].contents[1] set from storage dabsu:run lang.this.menu_templates_equipment_9