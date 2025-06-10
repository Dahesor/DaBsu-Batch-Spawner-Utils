data merge entity @s {block_state:{Name:"green_concrete"},Glowing:0b,glow_color_override:16777215,Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp","dabsu.ctrl.p_range","dabsu.ctrl","dabsu.gui_edit.pr","dabsu.ctrl.marker"],brightness:{block:15,sky:15}}


scoreboard players operation #move_x calc.dabsu = #side calc.dabsu
scoreboard players operation #move_z calc.dabsu = #side calc.dabsu

execute if score #x calc.dabsu matches -1 run scoreboard players operation #move_x calc.dabsu *= #-1 calc.dabsu
execute if score #z calc.dabsu matches -1 run scoreboard players operation #move_z calc.dabsu *= #-1 calc.dabsu

data modify storage dabsu:run run set from entity @s Pos
execute store result score #current_x calc.dabsu run data get storage dabsu:run run[0] 100
execute store result score #current_z calc.dabsu run data get storage dabsu:run run[2] 100



execute unless score #x calc.dabsu matches 0 run scoreboard players operation #current_x calc.dabsu += #move_x calc.dabsu
execute unless score #z calc.dabsu matches 0 run scoreboard players operation #current_z calc.dabsu += #move_z calc.dabsu
execute store result storage dabsu:run run[0] double 0.01 run scoreboard players get #current_x calc.dabsu
execute store result storage dabsu:run run[2] double 0.01 run scoreboard players get #current_z calc.dabsu


summon area_effect_cloud ~ ~ ~ {Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp","dabsu.ctrl.p_range","dabsu.ctrl","dabsu.gui_edit.pr"],Age:0,Duration:30,WaitTime:0,DurationOnUse:0,potion_duration_scale:0.0f,Radius:0.0f,RadiusOnUse:0.0f,RadiusPerTick:0.0f,ReapplicationDelay:999999999}
execute as @n[type=minecraft:area_effect_cloud,tag=dabsu.temp,tag=dabsu.gui_edit,distance=..0.3] run function dabsu:z_priq/gui/boot/sphere/cloud

data modify storage dabsu:run shape.this.translation set value [0.0f,0.0f,0.0f]
execute unless score #x calc.dabsu matches 0 store result storage dabsu:run shape.this.translation[0] float 0.01 run scoreboard players get #move_x calc.dabsu
execute unless score #z calc.dabsu matches 0 store result storage dabsu:run shape.this.translation[2] float 0.01 run scoreboard players get #move_z calc.dabsu

data modify entity @s transformation set from storage dabsu:run shape.this
execute if score #reboot_ctrl calc.dabsu matches 1 run function dabsu:z_priq/gui/util/prange_ctrl