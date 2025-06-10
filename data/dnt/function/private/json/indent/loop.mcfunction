$data modify storage dnt:ram indent set value "$(indent)$(space)"
scoreboard players remove $temp calc.dnt 1
execute if score $temp calc.dnt matches 1.. run function dnt:private/json/indent/loop with storage dnt:ram