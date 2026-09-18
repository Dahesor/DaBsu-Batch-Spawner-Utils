## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function concat the input list of strings into a single string. This will concat any quotation marks, backslashes, and any escape characters correctly.
## This is done by reading the charactors char by char
## It first split your list of input strings so that escape characters are isolated. Then it calls dnt:concat_splited to concat the splited list of strings into a single string.

execute unless data storage dnt:ram in[] run return run function dnt:private/snbt/no_input
scoreboard objectives remove calc.dnt
scoreboard objectives add calc.dnt dummy
scoreboard players set $process calc.dnt 0
function dnt:private/split/setup

data modify storage dnt:ram in set from storage dnt:ram result
function dnt:concat_splited
return 1

