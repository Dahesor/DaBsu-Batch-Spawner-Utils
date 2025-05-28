data modify storage dabsu:run shape.list set from entity @s data.shapes.list
scoreboard players add @s ctrl_data.dabsu 1
execute if score @s ctrl_data.dabsu matches 16.. run scoreboard players set @s ctrl_data.dabsu 0
scoreboard players operation $math calc.dabsu = @s ctrl_data.dabsu
function dabsu:z_priq/gui/boot/sphere/math/get_shape

data modify storage dabsu:run run set value {transformation:{},start_interpolation:1,interpolation_duration:40}
data modify storage dabsu:run run.transformation set from storage dabsu:run shape.this

data modify entity @s {} merge from storage dabsu:run run


