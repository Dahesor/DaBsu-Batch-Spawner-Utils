data modify storage dnt:ram concat.in append from storage dnt:ram char
scoreboard players add $count calc.dnt 1
execute if score $count calc.dnt matches 250.. run function dnt:private/split/save

function dnt:private/split/this