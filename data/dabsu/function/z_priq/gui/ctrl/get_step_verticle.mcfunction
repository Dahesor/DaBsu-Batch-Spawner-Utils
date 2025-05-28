data modify storage dabsu:run run set from entity @s Pos

# Player Position (anchored eyes)
execute store result score #origin_x calc.dabsu run data get storage dabsu:run run[0] 100
execute store result score #origin_y calc.dabsu run data get storage dabsu:run run[1] 100
execute store result score #origin_z calc.dabsu run data get storage dabsu:run run[2] 100

#Update Location
tp @s ^ ^ ^0.25
data modify storage dabsu:run run set from entity @s Pos

#Step Size
execute store result score #step_x calc.dabsu run data get storage dabsu:run run[0] 100
execute store result score #step_y calc.dabsu run data get storage dabsu:run run[1] 100
execute store result score #step_z calc.dabsu run data get storage dabsu:run run[2] 100
scoreboard players operation #step_x calc.dabsu -= #origin_x calc.dabsu
scoreboard players operation #step_y calc.dabsu -= #origin_y calc.dabsu
scoreboard players operation #step_z calc.dabsu -= #origin_z calc.dabsu

kill