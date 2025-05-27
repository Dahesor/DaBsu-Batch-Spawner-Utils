data modify storage dabsu:run run set from entity @s Pos
execute store result score #origin calc.dabsu run data get storage dabsu:run run[1] 10000

tp @s ^ ^ ^0.25

data modify storage dabsu:run run set from entity @s Pos
execute store result score #step calc.dabsu run data get storage dabsu:run run[1] 10000
scoreboard players operation #step calc.dabsu -= #origin calc.dabsu
execute store result score #step_x calc.dabsu run data get storage dabsu:run run[0] 100
execute store result score #step_z calc.dabsu run data get storage dabsu:run run[2] 100
scoreboard players operation #step_x calc.dabsu -= #origin_x calc.dabsu
scoreboard players operation #step_z calc.dabsu -= #origin_z calc.dabsu
kill