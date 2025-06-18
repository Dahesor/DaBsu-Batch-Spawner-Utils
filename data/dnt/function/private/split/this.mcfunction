execute unless function dnt:private/split/get_next run return 1
execute if score $remove_n calc.dnt matches 1 if data storage dnt:ram {char:"\n"} run return run function dnt:private/split/this
execute unless data storage dnt:ram {char:"'"} unless data storage dnt:ram {char:"\\"} run return run function dnt:private/split/normal_append with storage dnt:ram

data modify storage dnt:ram result append from storage dnt:ram out
execute if data storage dnt:ram {char:"'"} run data modify storage dnt:ram result append value "'"
execute if data storage dnt:ram {char:"\\"} run data modify storage dnt:ram result append value "\\"
data modify storage dnt:ram out set value ""
function dnt:private/split/this