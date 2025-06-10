data modify storage dnt:ram temp set value ""
execute unless score $length calc.dnt matches 1.. run return fail
data modify storage dnt:ram temp set string storage dnt:ram in 0 1