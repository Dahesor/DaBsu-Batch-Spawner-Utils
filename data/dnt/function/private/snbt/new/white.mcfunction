execute if data storage dnt:ram {text:"'"} run function dnt:private/snbt/new/batch
execute if data storage dnt:ram {text:"'"} run return run data modify storage dnt:ram in append value "'"

data modify storage dnt:ram concat.in append from storage dnt:ram text
scoreboard players add $count calc.dnt 1
execute if score $count calc.dnt matches 250.. run function dnt:private/snbt/new/batch