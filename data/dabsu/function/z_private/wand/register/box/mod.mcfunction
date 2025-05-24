execute if score %side_length calc.dabsu matches ..1 run return run execute if block ~ ~ ~ spawner align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_private/wand/register/new

scoreboard players operation %side_x calc.dabsu = %side_length calc.dabsu
scoreboard players operation %side_x calc.dabsu /= #2 calc.dabsu
function dabsu:z_private/wand/register/box/position