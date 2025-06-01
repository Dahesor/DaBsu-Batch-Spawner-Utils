data modify storage dabsu:run dialog.dialog set value {type:"confirmation",\
    title:[{text:"[DaBsu] ",color:"gold"},{text:"Quick Edit",color:"light_purple"}," ",{text:"Revert Changes",color:"white"}],\
    can_close_with_escape:true,after_action:"close",pause:false,\
    yes:{label:{translate:"gui.yes",color:"green"},action:{type:"run_command",command:"trigger trigger.dabsu set 183"}},\
    no:{label:{translate:"gui.cancel"}},\
    body:[\
        {type:"plain_message",contents:"§l========§c§l Revert Changes §f§l========",width:400},\
        {type:"plain_message",contents:""},\
        {type:"plain_message",contents:"§e§lCurrent Editing"},\
        {type:"plain_message",contents:[{text:"Type ID: "},{text:""},{text:"\nSpawner Count: "},{text:""}]},\
        {type:"plain_message",contents:"§c↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑\n↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑\n↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑"},\
        {type:"plain_message",contents:"§b§lOriginal Type"},\
        {type:"plain_message",contents:[{text:"Type ID: "},{text:""},{text:"\nSpawner Count: "},{text:""}]},\
    ]\
}

##Lang
data modify storage dabsu:run dialog.dialog.title[1].text set from storage dabsu:run lang.this.menu_templates_common_tags_1
data modify storage dabsu:run dialog.dialog.title[3].text set from storage dabsu:run lang.this.menu_templates_revert_confirm_0
data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.menu_templates_revert_confirm_4
data modify storage dabsu:run dialog.dialog.body[2].contents set from storage dabsu:run lang.this.menu_templates_revert_confirm_5
data modify storage dabsu:run dialog.dialog.body[3].contents[0].text set from storage dabsu:run lang.this.menu_templates_revert_confirm_2
data modify storage dabsu:run dialog.dialog.body[3].contents[2].text set from storage dabsu:run lang.this.menu_templates_revert_confirm_3
data modify storage dabsu:run dialog.dialog.body[4].contents set from storage dabsu:run lang.this.menu_templates_revert_confirm_6
data modify storage dabsu:run dialog.dialog.body[5].contents set from storage dabsu:run lang.this.menu_templates_revert_confirm_7
data modify storage dabsu:run dialog.dialog.body[-1].contents[0].text set from storage dabsu:run lang.this.menu_templates_revert_confirm_2
data modify storage dabsu:run dialog.dialog.body[-1].contents[2].text set from storage dabsu:run lang.this.menu_templates_revert_confirm_3