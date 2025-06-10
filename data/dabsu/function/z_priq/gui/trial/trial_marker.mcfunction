tag @s add dabsu.marker
tag @s add dabsu.trial_marker
tag @s add dabsu.quick_edit

scoreboard players operation @s uid.dabsu = #this uid.dabsu
data modify storage dabsu:run data set value {pos:{x:0,y:0,z:0}}
execute store result score #x calc.dabsu run data get entity @s Pos[0] 1
execute store result score #y calc.dabsu run data get entity @s Pos[1] 1
execute store result score #z calc.dabsu run data get entity @s Pos[2] 1
execute store result storage dabsu:run data.pos.x int 1 run scoreboard players get #x calc.dabsu
execute store result storage dabsu:run data.pos.y int 1 run scoreboard players get #y calc.dabsu
execute store result storage dabsu:run data.pos.z int 1 run scoreboard players get #z calc.dabsu

data modify storage dabsu:run data.UUID set from entity @s UUID