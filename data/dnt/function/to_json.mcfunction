## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function converts the input NBT structure into a JSON structure as a string


execute unless data storage dnt:ram in run return run function dnt:private/snbt/no_input

function dnt:get_snbt

execute if data storage dnt:ram in[0] run return run function dnt:private/json/init
data modify storage dnt:ram in merge value {"dnt:test":1b}
execute if data storage dnt:ram in."dnt:test" run return run function dnt:private/json/init
return run data get storage dnt:ram out