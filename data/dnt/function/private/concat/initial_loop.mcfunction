execute store result score $count calc.dnt run data get storage dnt:ram in
data modify storage dnt:ram result append from storage dnt:ram in[0]
execute if score $count calc.dnt matches 2.. run data modify storage dnt:ram result append from storage dnt:ram concat.escape
data modify storage dnt:ram result append from storage dnt:ram in[1]
data modify storage dnt:ram result append from storage dnt:ram in[2]
execute if score $count calc.dnt matches 4.. run data modify storage dnt:ram result append from storage dnt:ram concat.escape
data modify storage dnt:ram result append from storage dnt:ram in[3]
data modify storage dnt:ram result append from storage dnt:ram in[4]
execute if score $count calc.dnt matches 6.. run data modify storage dnt:ram result append from storage dnt:ram concat.escape
data modify storage dnt:ram result append from storage dnt:ram in[5]
data modify storage dnt:ram result append from storage dnt:ram in[6]
execute if score $count calc.dnt matches 8.. run data modify storage dnt:ram result append from storage dnt:ram concat.escape
data modify storage dnt:ram result append from storage dnt:ram in[7]

data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]

execute if data storage dnt:ram in[0] run function dnt:private/concat/initial_loop