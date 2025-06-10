execute unless score $length calc.dnt matches 1.. run return fail
data modify storage dnt:ram char set string storage dnt:ram in 0 1
data modify storage dnt:ram in set string storage dnt:ram in 1
scoreboard players remove $length calc.dnt 1
return 1