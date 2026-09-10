data modify entity @s text set value {storage:"dnt:ram",nbt:"in"}
data modify storage dnt:ram pt set from entity @s text.extra
kill

scoreboard players set depth calc.dnt 0
scoreboard players set is_array calc.dnt 0

data modify storage dnt:ram in set value [""]
data modify storage dnt:ram space set value ""
function dnt:private/pretty_print/analyze_parts

return run function dnt:concat