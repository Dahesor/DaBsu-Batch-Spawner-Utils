data modify storage dabsu:run run set from entity @s Pos

#Spawner Location
execute store result score #target_x calc.dabsu run data get storage dabsu:user data[0].editing.x 100
scoreboard players add #target_x calc.dabsu 50
execute store result score #target_y calc.dabsu run data get storage dabsu:user data[0].editing.y 100
scoreboard players add #target_y calc.dabsu 100
execute store result score #target_z calc.dabsu run data get storage dabsu:user data[0].editing.z 100
scoreboard players add #target_z calc.dabsu 50

##By step calculation

#Get Player Location and Step Size
execute anchored eyes positioned ^ ^ ^ summon marker run function dabsu:z_priq/gui/ctrl/get_step_verticle

#Get Step Count
scoreboard players operation #target_x calc.dabsu -= #origin_x calc.dabsu
scoreboard players operation #target_z calc.dabsu -= #origin_z calc.dabsu
scoreboard players operation #target_x calc.dabsu /= #step_x calc.dabsu
scoreboard players operation #target_z calc.dabsu /= #step_z calc.dabsu
#execute if score #target_x calc.dabsu matches ..0 run scoreboard players set #target_x calc.dabsu 999999
#execute if score #target_z calc.dabsu matches ..0 run scoreboard players set #target_z calc.dabsu 999999

#execute if score #target_x calc.dabsu matches ..6 run scoreboard players operation #target_x calc.dabsu > #target_z calc.dabsu
#execute if score #target_z calc.dabsu matches ..6 run scoreboard players operation #target_z calc.dabsu > #target_x calc.dabsu

execute store result score #step_x calc.dabsu run scoreboard players operation #target_x calc.dabsu > #target_z calc.dabsu
execute if score #step_x calc.dabsu matches 120.. run scoreboard players set #target_x calc.dabsu 120
execute if score #step_x calc.dabsu matches ..0 run scoreboard players set #target_x calc.dabsu 0

#Get Distance Traveled
scoreboard players operation #step_x calc.dabsu *= #step_y calc.dabsu

#Get final Location
scoreboard players operation #step_x calc.dabsu += #origin_y calc.dabsu

#Get Height from spawner
scoreboard players operation #step_x calc.dabsu -= #target_y calc.dabsu

#Get and clamp count
scoreboard players operation #step_x calc.dabsu /= #25 calc.dabsu
execute if score #step_x calc.dabsu matches ..0 run scoreboard players set #step_x calc.dabsu 0
execute if score #step_x calc.dabsu matches 101.. run scoreboard players set #step_x calc.dabsu 100


data modify storage dabsu:run proceed set value {command:"execute as @e[type=marker,tag=dabsu.marker,distance=..0.1] at @s run function dabsu:z_priq/gui/edit/spawn_amount"}
data modify storage dabsu:run proceed merge from storage dabsu:user data[0].editing
function dabsu:z_priq/edit/exe with storage dabsu:run proceed