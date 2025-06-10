data merge entity @s {block_state:{Name:"green_concrete"},Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp","dabsu.gui_edit.sc","dabsu.ctrl.count","dabsu.ctrl","dabsu.ctrl_native"],brightness:{block:15,sky:15}}
data modify entity @s transformation set from storage dabsu:run shape.this

execute store result score #current_y calc.dabsu run data get entity @s Pos[1] 100
scoreboard players operation #current_y calc.dabsu += #side calc.dabsu
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #current_y calc.dabsu
execute if score #reboot_ctrl calc.dabsu matches 1 run function dabsu:z_priq/gui/util/range_ctrl