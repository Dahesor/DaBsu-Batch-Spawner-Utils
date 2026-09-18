data modify storage dnt:ram in set value []
data modify storage dnt:ram in append from storage dnt:ram pcat.remainder[]
data modify storage dnt:ram pcat_groups append from storage dnt:ram out
function dnt:private/pcat/strategy_grouping