data modify entity @s text set value {storage:"dnt:ram",nbt:"in",plain:false}
data modify storage dnt:ram pt set from entity @s text.extra
kill

data modify storage dnt:ram in set value [""]
function dnt:private/snbt/arrange_parts

return run function dnt:concat