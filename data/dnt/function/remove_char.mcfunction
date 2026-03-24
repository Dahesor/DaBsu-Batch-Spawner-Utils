## Input:
##    storage dnt:ram in
##    storage dnt:ram arg
## Output:
##    storage dnt:ram out
## This function removes all instances of char stored in arg from the input list, then concat it.

execute unless data storage dnt:ram in run return run function dnt:private/snbt/no_input
execute unless data storage dnt:ram args[0] run return run function dnt:private/snbt/no_input
data modify storage dnt:ram result set value []
data modify storage dnt:ram out set value ""
scoreboard objectives remove calc.dnt
scoreboard objectives add calc.dnt dummy
scoreboard players set $process calc.dnt 2
function dnt:private/split/loop
data modify storage dnt:ram result append from storage dnt:ram out

data modify storage dnt:ram in set from storage dnt:ram result
function dnt:concat_splited
return 1