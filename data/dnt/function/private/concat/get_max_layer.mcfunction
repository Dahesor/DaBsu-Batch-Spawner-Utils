# ceil(length / 255), without an overflowing length + 254 intermediate.
execute if score $length calc.dnt matches ..255 run return 1
scoreboard players remove $length calc.dnt 1
scoreboard players operation $length calc.dnt /= #255 calc.dnt
scoreboard players add $length calc.dnt 1
scoreboard players add $iteration calc.dnt 1
function dnt:private/concat/get_max_layer
