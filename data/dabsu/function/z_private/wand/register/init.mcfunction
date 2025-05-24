function dabsu:z_private/wand/ray/start
#execute if score #loop_5 calc.dabsu matches ..0 run return fail
#execute if score #loop_5 calc.dabsu matches 2..3 run return fail
execute unless entity @s[tag=dabsu.register] run return fail

scoreboard players operation #loop_100 calc.dabsu = $gametime calc.dabsu
scoreboard players operation #loop_100 calc.dabsu %= #100 calc.dabsu
execute if score #loop_100 calc.dabsu matches 12 run function dabsu:z_private/text/name/registering

function dabsu:z_private/wand/register/rough