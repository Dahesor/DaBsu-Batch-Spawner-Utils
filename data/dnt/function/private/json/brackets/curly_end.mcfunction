#scoreboard players remove $indent calc.dnt 1
data remove storage dnt:ram brackets[-1]
scoreboard players set $key calc.dnt 0
scoreboard players reset $boolean calc.dnt

function dnt:private/json/append_char with storage dnt:ram
data modify storage dnt:ram temp set from storage dnt:ram brackets[-1]
execute unless data storage dnt:ram {temp:"{"} run scoreboard players set $bracket calc.dnt 0
function dnt:private/json/main
