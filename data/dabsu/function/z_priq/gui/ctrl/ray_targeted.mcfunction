#Get Spawner Location
execute store result score #origin_x calc.dabsu run data get storage dabsu:user data[0].editing.x 100
execute store result score #origin_z calc.dabsu run data get storage dabsu:user data[0].editing.z 100
scoreboard players add #origin_x calc.dabsu 50
scoreboard players add #origin_z calc.dabsu 50

#Location
data modify storage dabsu:run run set from entity @s Pos
execute store result score #step_x calc.dabsu run data get storage dabsu:run run[0] 100
execute store result score #step_z calc.dabsu run data get storage dabsu:run run[2] 100

#Get Range
scoreboard players operation #step_x calc.dabsu -= #origin_x calc.dabsu
scoreboard players operation #step_z calc.dabsu -= #origin_z calc.dabsu

#Get Final Range as #step_x
execute if score #step_x calc.dabsu matches ..-1 run scoreboard players operation #step_x calc.dabsu *= #-1 calc.dabsu
execute if score #step_z calc.dabsu matches ..-1 run scoreboard players operation #step_z calc.dabsu *= #-1 calc.dabsu
scoreboard players operation #step_x calc.dabsu > #step_z calc.dabsu
scoreboard players operation #step_x calc.dabsu /= #100 calc.dabsu


#Run
data modify storage dabsu:run proceed set value {command:"execute as @e[type=marker,tag=dabsu.marker,distance=..0.1] at @s run function dabsu:z_priq/gui/edit/spawn_range"}
data modify storage dabsu:run proceed merge from storage dabsu:user data[0].editing
function dabsu:z_priq/edit/exe with storage dabsu:run proceed

kill
return 1