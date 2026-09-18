## Grouping: concat segments in groups of 256, then recursively process the remainder

# We can deal with 256 segments at a time, so first we store anything longer in remainder
data modify storage dnt:ram pcat set value {raw:[],seg:[],remainder:[],count:0}
execute store result score $count calc.dnt run data get storage dnt:ram in
execute if score $count calc.dnt matches 257.. run function dnt:private/pcat/recursion/remainder
function dnt:private/pcat/main

# If we have a remainder, recursively process it
execute if data storage dnt:ram pcat.remainder[0] run return run function dnt:private/pcat/recursion/grouping

# If we have no remainder but have groups, we can process the groups
execute if data storage dnt:ram pcat_groups[0] run return run function dnt:private/pcat/recursion/releasing

kill