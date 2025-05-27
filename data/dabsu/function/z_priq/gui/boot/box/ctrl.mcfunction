data merge entity @s {block_state:{Name:"green_concrete"},Glowing:0b,glow_color_override:16777215,Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp","dabsu.ctrl.range","dabsu.ctrl"],brightness:{block:15,sky:15}}

data modify entity @s transformation set from storage dabsu:run shape.this

scoreboard players operation #move_x calc.dabsu = #side calc.dabsu
scoreboard players operation #move_z calc.dabsu = #side calc.dabsu

execute if score #x calc.dabsu matches -1 run scoreboard players operation #move_x calc.dabsu *= #-1 calc.dabsu
execute if score #z calc.dabsu matches -1 run scoreboard players operation #move_z calc.dabsu *= #-1 calc.dabsu

data modify storage dabsu:run run set from entity @s Pos
execute store result score #current_x calc.dabsu run data get storage dabsu:run run[0] 100
execute store result score #current_z calc.dabsu run data get storage dabsu:run run[2] 100
scoreboard players operation #current_x calc.dabsu += #move_x calc.dabsu
scoreboard players operation #current_z calc.dabsu += #move_z calc.dabsu
execute store result storage dabsu:run run[0] double 0.01 run scoreboard players get #current_x calc.dabsu
execute store result storage dabsu:run run[2] double 0.01 run scoreboard players get #current_z calc.dabsu
data modify entity @s Pos set from storage dabsu:run run

execute if score #reboot_ctrl calc.dabsu matches 1 run function dabsu:z_priq/gui/util/range_ctrl