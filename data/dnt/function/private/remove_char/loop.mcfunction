execute unless data storage dnt:ram holder[0] run return fail
scoreboard players set $changed calc.dnt 0
execute store result score $changed calc.dnt run data modify storage dnt:ram holder[0] set from storage dnt:ram char
execute if score $changed calc.dnt matches 0 run return 1
data remove storage dnt:ram holder[0]
function dnt:private/remove_char/loop