execute unless data storage dnt:ram result[1] run return run data modify storage dnt:ram out set from storage dnt:ram result[0]
data modify storage dnt:ram result set value []
function dnt:private/concat/joint_loop
data modify storage dnt:ram in set from storage dnt:ram result
function dnt:private/concat/layer_loop