data modify storage dnt:ram pcat.raw set value ["!"]
data modify storage dnt:ram pcat.raw append from storage dnt:ram pcat.seg[{is_single:true}].value

data modify entity @s text set value {storage:"dnt:ram",nbt:"pcat.raw[]",plain:true,separator:""}
data modify storage dnt:ram pcat.raw set value []
data modify storage dnt:ram pcat.raw append from entity @s text.extra[].extra[]