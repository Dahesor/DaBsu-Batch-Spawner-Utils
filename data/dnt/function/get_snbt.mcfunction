## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function converts the input NBT into SNBT in the form of a string.
## If it meets a truncated array, it will stop execution and call get_snbt_array_safe instead

execute unless data storage dnt:ram in run return run function dnt:private/snbt/no_input
data modify storage dnt:ram backup set from storage dnt:ram in
scoreboard objectives remove calc.dnt
scoreboard objectives add calc.dnt dummy
execute summon text_display if function dnt:private/snbt/get_parsed run return 1

data modify storage dnt:ram out set value "DNT ERROR: UNKNOWN ERROR"
return 0