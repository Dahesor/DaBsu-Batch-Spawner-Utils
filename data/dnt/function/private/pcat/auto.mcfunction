execute store result score $count calc.dnt run data get storage dnt:ram in
execute if score $count calc.dnt matches 512.. run return run function dnt:private/pcat/strategy_grouping
function dnt:private/pcat/strategy_biting