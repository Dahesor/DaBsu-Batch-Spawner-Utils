execute if score $this calc.dnt matches ..0 run return 1
scoreboard players remove $this calc.dnt 1


data modify storage dnt:ram pcat.seg append from storage dnt:ram pcat.seg[0]
data remove storage dnt:ram pcat.seg[0]

execute unless data storage dnt:ram pcat.seg[-1].is_single run return run function dnt:private/pcat/process/remove_head

data modify storage dnt:ram pcat.seg[-1].value set string storage dnt:ram pcat.raw[1] 1

data remove storage dnt:ram pcat.raw[0]
data remove storage dnt:ram pcat.raw[0]
data remove storage dnt:ram pcat.raw[0]
function dnt:private/pcat/process/remove_head