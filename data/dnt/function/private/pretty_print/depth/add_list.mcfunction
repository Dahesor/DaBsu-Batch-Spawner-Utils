execute if data storage dnt:ram pt[1].color run data modify storage dnt:ram temp set from storage dnt:ram pt[1].color
execute if data storage dnt:ram pt[1].color if data storage dnt:ram {temp:"red"} run return run scoreboard players set is_array calc.dnt 1
scoreboard players set is_array calc.dnt 0

function dnt:private/pretty_print/depth/add