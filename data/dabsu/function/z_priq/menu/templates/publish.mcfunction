data modify storage dabsu:run dialog.dialog set value {type:"minecraft:confirmation",\
    title:{text:"[DaBsu] Confirm?",color:"red"},\
    body:{type:"plain_message",width:400,contents:[]},\
    yes:{label:{translate:"gui.yes",color:"green",}},\
    no:{label:{translate:"gui.cancel"}},\
}


return 1

dialog show @s {type:"minecraft:confirmation",\
    title:{text:"[DaBsu] Confirm?",color:"red"},\
    body:{type:"plain_message",width:400,contents:[{text:"Are You Sure?",bold:true},"\nOptimizing the system will remove current selection, check update for every registered spawner, and re-assign potential type ids."]},\
    yes:{label:{translate:"selectServer.edit",color:"green",},on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1010"}},\
    no:{label:{translate:"gui.cancel"}},\
}