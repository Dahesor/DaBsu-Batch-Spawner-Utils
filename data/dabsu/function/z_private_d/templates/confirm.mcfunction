data modify storage dabsu:run dialog.dialog set value {type:"minecraft:confirmation",\
    can_close_with_escape:true,after_action:"close",pause:false,\
    title:{text:"[DaBsu] Confirm?",color:"red"},\
    body:{type:"plain_message",width:400,contents:[]},\
    yes:{label:{translate:"gui.yes",color:"green"}},\
    no:{label:{translate:"gui.cancel"}},\
}

##Lang
data modify storage dabsu:run dialog.dialog.title.text set from storage dabsu:run lang.this.menu_templates_multi_confirm_1
