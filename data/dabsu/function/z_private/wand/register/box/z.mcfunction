execute if block ~ ~ ~ spawner align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_private/wand/register/new
scoreboard players remove %side_z calc.dabsu 1
execute if score %side_z calc.dabsu matches 1.. positioned ~ ~ ~1 run function dabsu:z_private/wand/register/box/z