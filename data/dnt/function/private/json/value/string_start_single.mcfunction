scoreboard players set $string calc.dnt 3
scoreboard players set $processed calc.dnt 1
scoreboard players set $skip_final calc.dnt 1
data modify storage dnt:ram provided set value '"'
function dnt:private/json/insert_provided with storage dnt:ram