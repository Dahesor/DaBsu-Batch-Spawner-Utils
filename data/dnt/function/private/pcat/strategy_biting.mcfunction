## Biting: concat firts 256, then prepend the result to the remainder

# We can deal with 256 segments at a time, so first we store anything longer in remainder
data modify storage dnt:ram pcat set value {raw:[],seg:[],remainder:[],count:0}
execute store result score $count calc.dnt run data get storage dnt:ram in
execute if score $count calc.dnt matches 257.. run function dnt:private/pcat/recursion/remainder
function dnt:private/pcat/main

# If we have a remainder, recursively process it
execute if data storage dnt:ram pcat.remainder[0] run return run function dnt:private/pcat/recursion/recursive
kill