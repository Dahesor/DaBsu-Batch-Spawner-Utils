data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",\
    title:"[DaBsu] Obtaining Spawner From Spawn Egg...",\
    can_close_with_escape:true,after_action:"close",pause:false,\
    body:[{type:"plain_message",contents:"                                       ",width:400}],\
    action:{label:{translate:"gui.back"}},\
}





return 1
##Lang
data modify storage dabsu:run dialog.dialog.title set from storage dabsu:run lang.this.batch_title
data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.temp_batch_home_1
data modify storage dabsu:run dialog.dialog.actions[1].label.text set from storage dabsu:run lang.this.temp_batch_home_2
data modify storage dabsu:run dialog.dialog.actions[2].label.text set from storage dabsu:run lang.this.temp_batch_home_3
data modify storage dabsu:run dialog.dialog.actions[3].label.text set from storage dabsu:run lang.this.temp_batch_home_4
data modify storage dabsu:run dialog.dialog.actions[4].label.text set from storage dabsu:run lang.this.temp_batch_home_5
