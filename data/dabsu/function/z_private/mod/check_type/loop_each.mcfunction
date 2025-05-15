data modify storage dabsu:run run set from storage dabsu:run element
scoreboard players set $changed calc.dabsu 0
execute store result score $changed calc.dabsu run data modify storage dabsu:run run set from storage dabsu:run temp[0].Potential
execute if score $changed calc.dabsu matches 0 run return run data get storage dabsu:run temp[0].type

data remove storage dabsu:run temp[0]
execute if data storage dabsu:run temp[0] run return run function dabsu:z_private/mod/check_type/loop_each
return run function dabsu:z_private/mod/check_type/new_type