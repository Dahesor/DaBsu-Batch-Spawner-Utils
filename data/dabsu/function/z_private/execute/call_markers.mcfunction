execute unless score %force_select calc.dabsu matches 1 unless score @s selected.dabsu matches 1 run return fail

data modify storage dabsu:run data set from entity @s data
execute store result score #cx2 calc.dabsu run data get storage dabsu:run data.chunk.x
execute store result score #cz2 calc.dabsu run data get storage dabsu:run data.chunk.z
scoreboard players operation #cx2 calc.dabsu *= #16 calc.dabsu
scoreboard players operation #cz2 calc.dabsu *= #16 calc.dabsu
execute unless score #cx calc.dabsu = #cx2 calc.dabsu run return fail
execute unless score #cz calc.dabsu = #cz2 calc.dabsu run return fail
scoreboard players add %completed_obj calc.dabsu 1

execute if data storage dabsu:run exe{args:"NONE"} run return run function dabsu:z_private/execute/__run_any with storage dabsu:run exe

function dabsu:z_private/execute/__run_any_args with storage dabsu:run exe