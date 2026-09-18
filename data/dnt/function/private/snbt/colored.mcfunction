execute if data storage dnt:ram text.extra run return run function dnt:private/snbt/colored/special_key

execute if data storage dnt:ram text{color:"green"} run return run function dnt:private/snbt/new/green

data modify storage dnt:ram concat.in append from storage dnt:ram text.text
scoreboard players add $count calc.dnt 1
execute if score $count calc.dnt matches 250.. run function dnt:private/snbt/new/batch

function dnt:private/snbt/next