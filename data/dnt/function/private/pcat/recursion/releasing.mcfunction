data modify storage dnt:ram in set from storage dnt:ram pcat_groups
data modify storage dnt:ram in append from storage dnt:ram out
data modify storage dnt:ram pcat_groups set value []
function dnt:private/pcat/auto