scoreboard players operation @s ctrl_data.dabsu = $math calc.dabsu
function dabsu:z_priq/gui/boot/sphere/math/get_shape
data modify storage dabsu:run run set value {transformation:[],data:{shapes:{list:[]}},Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp","dabsu.gui_edit.pr"],block_state:{Name:"blue_concrete"},Glowing:1b,glow_color_override:13311,brightness:{block:15,sky:15}}

data modify storage dabsu:run run.transformation set from storage dabsu:run shape.this
data modify storage dabsu:run run.data.shapes.list set from storage dabsu:run shape.list
data modify entity @s {} merge from storage dabsu:run run
tag @s add dabsu.ctrl.hs

scoreboard players add $math calc.dabsu 1