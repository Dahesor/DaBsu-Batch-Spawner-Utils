scoreboard players set is_array calc.dnt 0
scoreboard players set #return calc.dnt 0
execute if score depth calc.dnt >= max_indent calc.dnt run scoreboard players set #return calc.dnt 1
scoreboard players remove depth calc.dnt 1
execute if score #return calc.dnt matches 1 run return fail


data modify storage dnt:ram in append value "\n"
function dnt:private/pretty_print/space/generate
data modify storage dnt:ram in append from storage dnt:ram space