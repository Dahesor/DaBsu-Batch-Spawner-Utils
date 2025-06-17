data modify storage dnt:ram temp set value ""
execute unless score $length calc.dnt matches 2.. run return fail
data modify storage dnt:ram temp set string storage dnt:ram in 1 2
execute unless data storage dnt:ram {temp:";"} run return fail
data modify storage dnt:ram in set string storage dnt:ram in 2
scoreboard players remove $length calc.dnt 2