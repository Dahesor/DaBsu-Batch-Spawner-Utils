data modify storage dabsu:run dialog.dialog.body append value {\
    type:"item",show_decorations:true,show_tooltip:true,item:{id:"structure_void"},description:[\
        "  ",{text:"With One Item",underlined:true,click_event:{action:"run_command",command:"/trigger input.dabsu set 100"},color:"yellow",hover_event:{action:"show_text",value:"Replace the equipment slot with\n only one of this item regardless\n of the item count you see here."}},\
        "  ",{text:"With Raw Stack",underlined:true,click_event:{action:"run_command",command:"/trigger input.dabsu set 200"},color:"aqua",hover_event:{action:"show_text",value:"Replace the equipment slot\n with the raw item stack you see here."}},"       ",\
    ]\
}

data modify storage dabsu:run dialog.dialog.body[-1].item set from storage dabsu:run item_list[0]
execute store result storage dabsu:run run.one int 1 run scoreboard players get #index calc.dabsu
execute store result storage dabsu:run run.full int 1 run scoreboard players get #page calc.dabsu
function dabsu:z_priq/menu/gen/__attach_item_input with storage dabsu:run run

#lang
data modify storage dabsu:run dialog.dialog.body[-1].description[1].text set from storage dabsu:run lang.this.menu_gen_item_loop_1
data modify storage dabsu:run dialog.dialog.body[-1].description[3].text set from storage dabsu:run lang.this.menu_gen_item_loop_2
data modify storage dabsu:run dialog.dialog.body[-1].description[1].hover_event.value set from storage dabsu:run lang.this.item_replace_note_1
data modify storage dabsu:run dialog.dialog.body[-1].description[3].hover_event.value set from storage dabsu:run lang.this.item_replace_note_2


scoreboard players add #index calc.dabsu 1
scoreboard players add #page calc.dabsu 1
data remove storage dabsu:run item_list[0]
execute if data storage dabsu:run item_list[0] run function dabsu:z_priq/menu/gen/item_loop