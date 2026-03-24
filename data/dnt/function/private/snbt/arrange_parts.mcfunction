execute unless data storage dnt:ram pt[0] run return 1

data modify storage dnt:ram text set from storage dnt:ram pt[0]
execute if data storage dnt:ram text.text run return run function dnt:private/snbt/colored

execute if data storage dnt:ram {text:""} run return run function dnt:private/snbt/next
execute if data storage dnt:ram {text:" "} run return run function dnt:private/snbt/next
execute if data storage dnt:ram {text:"'"} run return run function dnt:private/snbt/plain/single
execute if data storage dnt:ram {text:'"'} run return run function dnt:private/snbt/plain/double

data modify storage dnt:ram in append from storage dnt:ram text
function dnt:private/snbt/next