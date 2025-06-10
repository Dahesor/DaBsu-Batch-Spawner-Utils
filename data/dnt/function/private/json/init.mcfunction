data modify storage dnt:ram in set from storage dnt:ram out
scoreboard objectives add calc.dnt dummy
data modify storage dnt:ram new_line set value "\n"
data modify storage dnt:ram space set value "  "
execute store result score $length calc.dnt run data get storage dnt:ram in

scoreboard players set $bracket calc.dnt 0
scoreboard players set $key calc.dnt 1
scoreboard players set $indent calc.dnt 0
scoreboard players set $string calc.dnt 0
scoreboard players set $list calc.dnt 0
scoreboard players set $quoted calc.dnt 0
scoreboard players set $quoted_end calc.dnt 0
scoreboard players set $escape calc.dnt 0

data modify storage dnt:ram out set value ""
data modify storage dnt:ram brackets set value []
data modify storage dnt:ram result set value []

function dnt:private/json/main
#function dnt:private/json/joint/start
data modify storage dnt:ram in set from storage dnt:ram result
function dnt:concat_splited
scoreboard objectives remove calc.dnt
return run data get storage dnt:ram out