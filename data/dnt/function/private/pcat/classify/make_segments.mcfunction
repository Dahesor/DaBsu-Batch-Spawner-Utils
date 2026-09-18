execute unless data storage dnt:ram pcat.raw[2] run return 1

data modify storage dnt:ram char set from storage dnt:ram pcat.raw[0]
data modify storage dnt:ram string set from storage dnt:ram pcat.raw[1]
data modify storage dnt:ram pcat.seg append value {value:"FAIL"}

execute if data storage dnt:ram {char:'"'} run data modify storage dnt:ram pcat.seg[-1].value set from storage dnt:ram string
execute if data storage dnt:ram {char:"'"} run function dnt:private/pcat/classify/__insert_single with storage dnt:ram

data remove storage dnt:ram pcat.raw[0]
data remove storage dnt:ram pcat.raw[0]
data remove storage dnt:ram pcat.raw[0]
function dnt:private/pcat/classify/make_segments