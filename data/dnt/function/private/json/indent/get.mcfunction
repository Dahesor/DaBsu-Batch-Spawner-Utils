data modify storage dnt:ram indent set value ""
scoreboard players operation $temp calc.dnt = $indent calc.dnt
execute if score $temp calc.dnt matches 1.. run function dnt:private/json/indent/loop with storage dnt:ram