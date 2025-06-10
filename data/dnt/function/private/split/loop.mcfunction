data modify storage dnt:ram temp set from storage dnt:ram in[0]
execute store result score $length calc.dnt run data get storage dnt:ram temp
function dnt:private/split/this
data remove storage dnt:ram in[0]
execute if data storage dnt:ram in[0] run function dnt:private/split/loop