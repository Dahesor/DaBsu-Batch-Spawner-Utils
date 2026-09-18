data modify entity @s text set value {storage:"dnt:ram",nbt:"in",plain:false}
data modify storage dnt:ram pt set from entity @s text.extra
kill

execute if data storage dnt:ram pt[{color:"gray",text:"<...>"}] run return run function dnt:private/snbt/redirect

data modify storage dnt:ram in set value [""]
data modify storage dnt:ram concat set value {count:0,in:[]}
scoreboard players set $count calc.dnt 0
function dnt:private/snbt/arrange_parts
execute if data storage dnt:ram concat.in[0] run function dnt:private/snbt/new/batch

return run function dnt:concat