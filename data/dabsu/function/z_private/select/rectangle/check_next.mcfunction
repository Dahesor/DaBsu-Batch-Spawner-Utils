execute unless data storage dabsu:run Chunks[0].Objects[0] run return fail

execute store result score %rx calc.dabsu run data get storage dabsu:run Chunks[0].x
execute store result score %rz calc.dabsu run data get storage dabsu:run Chunks[0].z
scoreboard players operation %rx calc.dabsu *= #16 calc.dabsu
scoreboard players operation %rz calc.dabsu *= #16 calc.dabsu

scoreboard players operation %rx2 calc.dabsu = %rx calc.dabsu
scoreboard players operation %rz2 calc.dabsu = %rz calc.dabsu
scoreboard players add %rx2 calc.dabsu 15
scoreboard players add %rz2 calc.dabsu 15
function dabsu:z_private/select/rectangle/logic/check_chunk_in