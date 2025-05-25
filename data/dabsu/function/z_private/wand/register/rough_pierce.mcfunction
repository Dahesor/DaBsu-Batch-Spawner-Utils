function dabsu:z_private/wand/register/pierce_mod

scoreboard players remove $interval calc.dabsu 1
execute if score $interval calc.dabsu matches ..0 run function dabsu:z_private/wand/register/box/path_scan

scoreboard players remove $distance calc.dabsu 1
execute if score $distance calc.dabsu matches ..0 run return fail
execute positioned ^ ^ ^1 run function dabsu:z_private/wand/register/rough_pierce