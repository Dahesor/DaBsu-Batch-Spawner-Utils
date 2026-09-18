execute unless data storage dnt:ram pt[0] run return 1

data modify storage dnt:ram text set from storage dnt:ram pt[0]
execute if data storage dnt:ram text.text run return run function dnt:private/snbt/colored

execute if data storage dnt:ram {text:""} run return run function dnt:private/snbt/next
execute if data storage dnt:ram {text:" "} run return run function dnt:private/snbt/next

function dnt:private/snbt/new/white

function dnt:private/snbt/next