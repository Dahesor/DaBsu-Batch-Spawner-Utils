data modify entity @s text set value {storage:"dnt:ram",nbt:"asnbt.source",plain:false}
data modify storage dnt:ram asnbt.tokens set from entity @s text.extra
kill @s
