function dabsu:z_private/text/get
function dabsu:z_priq/menu/templates/select_slot
playsound ui.button.click master @s ~ ~ ~ 0.7 1.3 0.7

function dabsu:z_private_d/uid/get
data modify storage dabsu:user data[0].editing.slot set value 0
execute store result storage dabsu:user data[0].editing.slot int 1 run scoreboard players get #trigger trigger.dabsu

data modify storage dabsu:user data[0].Inv set from entity @s Inventory
data modify storage dabsu:user data[0].Inv prepend from entity @s SelectedItem
data modify storage dabsu:user data[0].Inv prepend from entity @s equipment.offhand
data modify storage dabsu:user data[0].Inv prepend from entity @s equipment.head
data modify storage dabsu:user data[0].Inv prepend from entity @s equipment.chest
data modify storage dabsu:user data[0].Inv prepend from entity @s equipment.legs
data modify storage dabsu:user data[0].Inv prepend from entity @s equipment.feet
data modify storage dabsu:user data[0].Inv prepend from entity @s equipment.body
data modify storage dabsu:user data[0].Inv prepend from entity @s equipment.saddle
data modify storage dabsu:user data[0].Inv append from entity @s EnderItems[]
data remove storage dabsu:user data[0].Inv[{components:{"minecraft:custom_data":{dabsu:{is_wand:1b}}}}]

scoreboard players set #index calc.dabsu 100
scoreboard players set #page calc.dabsu 200
data modify storage dabsu:run item_list set from storage dabsu:user data[0].Inv
data modify storage dabsu:run run set value {one:100,full:200}
execute unless data storage dabsu:user data[0].Inv[0] run data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:"You have nothing in your inventory or enderchest"}
execute unless data storage dabsu:user data[0].Inv[0] run data modify storage dabsu:run dialog.dialog.body[-1].contents set from storage dabsu:run lang.this.menu_select_item_2
execute if data storage dabsu:user data[0].Inv[0] run function dabsu:z_priq/menu/gen/item_loop

data modify storage dabsu:run dialog.dialog.body prepend value {\
    type:"item",show_decorations:false,show_tooltip:false,item:{id:"structure_void"},description:[\
        "  ",{text:"Empty This Slot",underlined:true,click_event:{action:"run_command",command:"/trigger input.dabsu set 300"},color:"red",hover_event:{action:"show_text",value:"Clear the item in this slot."}},\
    ]\
}
scoreboard players set @s waiting.dabsu 11
scoreboard players enable @s input.dabsu

#Lang
data modify storage dabsu:run dialog.dialog.body[0].description[1].text set from storage dabsu:run lang.this.menu_select_item_1


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog