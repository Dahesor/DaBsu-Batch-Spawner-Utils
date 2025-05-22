data modify storage dabsu:run dialog.dialog set value {type:"minecraft:confirmation",\
    title:{text:"[DaBsu] Confirm Edit?",color:"red"},\
    body:{type:"plain_message",width:400,contents:[]},\
    yes:{label:{translate:"selectServer.edit",color:"green"}},\
    no:{label:{translate:"gui.cancel"}},\
}


return 1

dialog show @s {type:"minecraft:confirmation",\
    title:{text:"[DaBsu] Confirm Edit?",color:"red"},\
    body:{type:"plain_message",width:400,contents:[]},\
    yes:{label:{translate:"selectServer.edit",color:"green"}},\
    no:{label:{translate:"gui.cancel"}},\
}