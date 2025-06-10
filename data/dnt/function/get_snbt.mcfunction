## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function converts the input NBT into SNBT in the form of a string.

execute unless data storage dnt:ram in run return run function dnt:private/snbt/no_input

execute as @a[limit=1] at @s run return run function dnt:private/snbt/entity
execute as @e[limit=1] at @s run return run function dnt:private/snbt/entity
data modify storage dnt:ram out set value "DNT ERROR: NO PARSER ENTITY"
return 0