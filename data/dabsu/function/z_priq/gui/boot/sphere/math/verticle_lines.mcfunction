data modify storage dabsu:run run set value {transformation:[],Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp","dabsu.gui_edit.pr"],block_state:{Name:"yellow_concrete"},glow_color_override:16761856,brightness:{block:15,sky:15}}

data modify storage dabsu:run run.transformation set from storage dabsu:run shape.list[0]
execute if score $math calc.dabsu matches 3 run data modify storage dabsu:run run.Glowing set value 1b
execute if score $math calc.dabsu matches 7 run data modify storage dabsu:run run.Glowing set value 1b

data modify entity @s {} merge from storage dabsu:run run
data remove storage dabsu:run shape.list[0]
scoreboard players add $math calc.dabsu 1