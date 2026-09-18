## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function concat the input list of strings into a single string. This will concat any quotation marks, backslashes, and any escape characters correctly.
## This is done with some text component and snbt formatting black magic
## It first split your list of input strings so that escape characters are isolated. Then it calls dnt:concat_splited to concat the splited list of strings into a single string.

execute unless data storage dnt:ram in[] run return run function dnt:private/snbt/no_input
data modify storage dnt:ram out set value ""
scoreboard objectives remove calc.dnt
scoreboard objectives add calc.dnt dummy
data modify storage dnt:ram pcat_groups set value []

execute summon text_display run function dnt:private/pcat/auto

return 1

