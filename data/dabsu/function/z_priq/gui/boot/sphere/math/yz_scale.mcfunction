execute store result score #current calc.dabsu run data get storage dabsu:run shape.list[0].translation[1] 10000
scoreboard players operation #current calc.dabsu *= #scale calc.dabsu
execute store result storage dabsu:run shape.list[0].translation[1] float 0.0001 run scoreboard players get #current calc.dabsu

execute store result score #current calc.dabsu run data get storage dabsu:run shape.list[0].translation[0] 10000
scoreboard players operation #current calc.dabsu *= #scale calc.dabsu
execute store result storage dabsu:run shape.list[0].translation[0] float 0.0001 run scoreboard players get #current calc.dabsu

execute store result score #current calc.dabsu run data get storage dabsu:run shape.list[0].scale[1] 4800
scoreboard players operation #current calc.dabsu *= #scale calc.dabsu
execute store result storage dabsu:run shape.list[0].scale[1] float 0.0001 run scoreboard players get #current calc.dabsu

scoreboard players remove $math calc.dabsu 1
execute if score $math calc.dabsu matches ..0 run return 1
data modify storage dabsu:run shape.list append from storage dabsu:run shape.list[0]
data remove storage dabsu:run shape.list[0]
function dabsu:z_priq/gui/boot/sphere/math/yz_scale