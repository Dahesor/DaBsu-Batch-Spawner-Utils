
execute if score #var calc.dabsu matches ..50 run return run data modify storage dabsu:run run set from storage dabsu:run spawner.SpawnPotentials[0]
data remove storage dabsu:run spawner.SpawnPotentials[0]
scoreboard players remove #var calc.dabsu 50
function dabsu:z_private/wand/ray/loop_pot