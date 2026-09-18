data modify storage dnt:ram result set value []
data modify storage dnt:ram out set value ""
data modify storage dnt:ram concat.in set value []
data modify storage dnt:ram pcat set value {count:0,concat:{}}
scoreboard players set $count calc.dnt 0

function dnt:private/split/loop

function dnt:private/split/batch

data remove storage dnt:ram pcat