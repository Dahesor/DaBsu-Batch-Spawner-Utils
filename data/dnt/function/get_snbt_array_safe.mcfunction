## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function converts the input NBT into SNBT in the form of a string.
## This function uses the safe method directly, instead of quitting and turning to a safe method mid-execution.

execute unless data storage dnt:ram in run return run function dnt:private/asnbt/no_input
data modify storage dnt:ram asnbt set value {parts:[],path:[],segments:[],stack:[],failed:0b}
data modify storage dnt:ram asnbt.source set from storage dnt:ram in
scoreboard objectives add asnbt.dnt dummy
execute summon text_display run function dnt:private/asnbt/get_parsed
execute unless data storage dnt:ram asnbt.tokens[0] run return run function dnt:private/asnbt/error
function dnt:private/asnbt/walk
execute if data storage dnt:ram asnbt{failed:1b} run return run function dnt:private/asnbt/error
data modify storage dnt:ram in set from storage dnt:ram asnbt.parts
function dnt:concat
scoreboard objectives remove asnbt.dnt
data remove storage dnt:ram asnbt
return 1
