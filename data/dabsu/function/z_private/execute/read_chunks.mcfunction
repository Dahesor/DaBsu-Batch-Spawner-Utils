data modify storage dabsu:run parsing.buffer prepend from storage dabsu:run parsing.chunk[0]
data remove storage dabsu:run parsing.chunk[0]
data modify storage dabsu:run xz set value {x:0,z:0}
execute store result storage dabsu:run xz.x int 16 run data get storage dabsu:run parsing.buffer[0].x
execute store result storage dabsu:run xz.z int 16 run data get storage dabsu:run parsing.buffer[0].z

function dabsu:z_private/execute/__add_forceload with storage dabsu:run xz

scoreboard players remove %allowed_chunks calc.dabsu 1
execute if score %allowed_chunks calc.dabsu matches 1.. if data storage dabsu:run parsing.chunk[0] run function dabsu:z_private/execute/read_chunks