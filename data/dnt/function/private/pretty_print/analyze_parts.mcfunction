execute unless data storage dnt:ram pt[0] run return 1

data modify storage dnt:ram text set from storage dnt:ram pt[0]

execute if data storage dnt:ram text.text run return run function dnt:private/pretty_print/colored/simple

#Skip empty string and space
execute if data storage dnt:ram {text:""} run return run function dnt:private/pretty_print/next
execute if data storage dnt:ram {text:" "} run return run function dnt:private/pretty_print/next

#Reduce depth on close brackets
execute if data storage dnt:ram {text:"}"} run function dnt:private/pretty_print/depth/remove
execute if data storage dnt:ram {text:"]"} unless score is_array calc.dnt matches 1 run function dnt:private/pretty_print/depth/remove
execute if data storage dnt:ram {text:"]"} run scoreboard players set is_array calc.dnt 0

#Append char
data modify storage dnt:ram in append from storage dnt:ram text

execute if data storage dnt:ram {text:":"} run data modify storage dnt:ram in append value " "

#Add depth on open brackets
execute if data storage dnt:ram {text:"{"} run function dnt:private/pretty_print/depth/add
execute if data storage dnt:ram {text:"["} run function dnt:private/pretty_print/depth/add_list

#If Comma, new line
execute unless score is_array calc.dnt matches 1 if data storage dnt:ram {text:","} unless score depth calc.dnt >= max_indent calc.dnt run data modify storage dnt:ram in append value "\n"
execute unless score is_array calc.dnt matches 1 if data storage dnt:ram {text:","} unless score depth calc.dnt >= max_indent calc.dnt run data modify storage dnt:ram in append from storage dnt:ram space

function dnt:private/pretty_print/next