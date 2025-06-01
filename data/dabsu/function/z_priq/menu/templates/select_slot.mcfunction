data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",\
    title:[{text:"[DaBsu] ",color:"gold"},{text:"Replace Equipment",color:"white"}],\
    can_close_with_escape:true,after_action:"none",pause:false,\
    action:{label:{translate:"gui.cancel"},action:{type:"run_command",command:"/trigger trigger.dabsu set 112"}},\
    body:[\
    ]\
}

data modify storage dabsu:run dialog.dialog.title[1].text set from storage dabsu:run lang.this.menu_templates_select_slot_1


##Lang