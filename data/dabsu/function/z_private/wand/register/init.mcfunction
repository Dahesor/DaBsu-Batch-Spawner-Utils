function dabsu:z_private/wand/ray/start
#execute if score #loop_5 calc.dabsu matches ..0 run return fail
#execute if score #loop_5 calc.dabsu matches 2..3 run return fail
execute unless entity @s[tag=dabsu.register] run return fail

scoreboard players operation %distance calc.dabsu = $gametime calc.dabsu
scoreboard players operation %distance calc.dabsu %= #2 calc.dabsu
execute if score %distance calc.dabsu matches 1 run return fail

scoreboard players operation #loop_100 calc.dabsu = $gametime calc.dabsu
scoreboard players operation #loop_100 calc.dabsu %= #100 calc.dabsu
execute if score #loop_100 calc.dabsu matches 12 run function dabsu:z_private/text/name/registering

execute unless score @s register_range.dabsu matches 10000.. unless score @s register_range.dabsu matches ..-10000 run scoreboard players set @s register_range.dabsu 123125

function dabsu:z_private/wand/register/get_data
scoreboard players operation $distance calc.dabsu = %distance calc.dabsu
scoreboard players set $interval calc.dabsu 0

scoreboard players set $recorded calc.dabsu 0
data modify storage dabsu:run in set from entity @s Dimension

execute unless score %pierce calc.dabsu matches 1 run return run function dabsu:z_private/wand/register/rough
function dabsu:z_private/wand/register/rough_pierce