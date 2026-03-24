data modify storage dnt:ram result set value []
data modify storage dnt:ram out set value ""
function dnt:private/split/loop
data modify storage dnt:ram result append from storage dnt:ram out

data modify storage dnt:ram in set from storage dnt:ram result
function dnt:concat_splited
return 1