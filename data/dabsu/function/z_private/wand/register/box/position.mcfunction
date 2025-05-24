scoreboard players remove %side_x calc.dabsu 1

execute unless score %side_x calc.dabsu matches ..-1 positioned ~-1 ~-1 ~-1 run return run function dabsu:z_private/wand/register/box/position

scoreboard players operation %side_x calc.dabsu = %side_length calc.dabsu
function dabsu:z_private/wand/register/box/x