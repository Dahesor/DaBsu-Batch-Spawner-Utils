execute if score $temp calc.dnt >= $length calc.dnt run return 1
scoreboard players operation $temp calc.dnt *= #4 calc.dnt
scoreboard players add $iteration calc.dnt 1
function dnt:private/concat/get_max_layer