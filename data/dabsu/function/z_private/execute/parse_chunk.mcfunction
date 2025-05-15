execute store result score #cx calc.dabsu run data get storage dabsu:run this.buffer[0].x
execute store result score #cz calc.dabsu run data get storage dabsu:run this.buffer[0].z
scoreboard players operation #cx calc.dabsu *= #16 calc.dabsu
scoreboard players operation #cz calc.dabsu *= #16 calc.dabsu

scoreboard players set %load_complete calc.dabsu 0
execute store result storage dabsu:run xz.x int 1 run scoreboard players get #cx calc.dabsu
execute store result storage dabsu:run xz.z int 1 run scoreboard players get #cz calc.dabsu
execute store result score %load_complete calc.dabsu run function dabsu:z_private/execute/__call_markers with storage dabsu:run xz

execute unless score %load_complete calc.dabsu matches 1.. run data modify storage dabsu:run parsing.buffer append from storage dabsu:run this.buffer[0]

execute if score %load_complete calc.dabsu matches 1.. run function dabsu:z_private/execute/__remove_forceload with storage dabsu:run xz
data remove storage dabsu:run this.buffer[0]
execute if data storage dabsu:run this.buffer[0] run function dabsu:z_private/execute/parse_chunk