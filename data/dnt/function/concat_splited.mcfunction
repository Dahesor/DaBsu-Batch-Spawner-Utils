## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function concat the input list of splited strings into a single string.

execute unless data storage dnt:ram in[] run return run function dnt:private/snbt/no_input

scoreboard objectives add calc.dnt dummy
# initial_loop expands N alternating segments into N + floor(N / 2) items.
execute store result score $length calc.dnt run data get storage dnt:ram in
scoreboard players set #2 calc.dnt 2
scoreboard players set #255 calc.dnt 255
scoreboard players operation $temp calc.dnt = $length calc.dnt
scoreboard players operation $temp calc.dnt /= #2 calc.dnt
scoreboard players operation $length calc.dnt += $temp calc.dnt
# iteration counts additional parse layers beyond the first (which always runs).
scoreboard players set $iteration calc.dnt 0
function dnt:private/concat/get_max_layer
function dnt:private/concat/main
scoreboard objectives remove calc.dnt
return 1