## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function concat the input list of splited strings into a single string.

execute unless data storage dnt:ram in[] run return run function dnt:private/snbt/no_input

scoreboard objectives add calc.dnt dummy
execute store result score $length calc.dnt if data storage dnt:ram in[]
scoreboard players set $iteration calc.dnt 0
scoreboard players set $temp calc.dnt 8
scoreboard players set #4 calc.dnt 4
function dnt:private/concat/get_max_layer
function dnt:private/concat/main
scoreboard objectives remove calc.dnt
return 1