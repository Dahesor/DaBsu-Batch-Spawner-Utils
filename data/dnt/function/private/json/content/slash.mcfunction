data modify storage dnt:ram result append from storage dnt:ram out
data modify storage dnt:ram result append value "\\"
data modify storage dnt:ram out set value ""

execute unless score $escape calc.dnt matches 1.. run scoreboard players set $escape calc.dnt 1

function dnt:private/json/main