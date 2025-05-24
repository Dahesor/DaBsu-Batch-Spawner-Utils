scoreboard players operation %side_z calc.dabsu = %side_length calc.dabsu
function dabsu:z_private/wand/register/box/z
scoreboard players remove %side_y calc.dabsu 1
execute if score %side_y calc.dabsu matches 1.. positioned ~ ~1 ~ run function dabsu:z_private/wand/register/box/y