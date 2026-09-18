## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function concat the input list of strings into a single string. This will concat any quotation marks, backslashes, and any escape characters correctly.
## There are 2 methods to perform the concatenation. This function will choose one of them

scoreboard objectives add calc.dnt dummy
execute store result score $count calc.dnt run data get storage dnt:ram in
execute if score $count calc.dnt matches 8.. run return run function dnt:concat/by_nbt_parse

scoreboard players set $total calc.dnt 0
execute store result score $count calc.dnt run data get storage dnt:ram in[0]
scoreboard players operation $total calc.dnt += $count calc.dnt
execute store result score $count calc.dnt run data get storage dnt:ram in[1]
scoreboard players operation $total calc.dnt += $count calc.dnt
execute store result score $count calc.dnt run data get storage dnt:ram in[2]
scoreboard players operation $total calc.dnt += $count calc.dnt
execute if score $total calc.dnt matches 9.. run return run function dnt:concat/by_nbt_parse
execute store result score $count calc.dnt run data get storage dnt:ram in[3]
scoreboard players operation $total calc.dnt += $count calc.dnt
execute store result score $count calc.dnt run data get storage dnt:ram in[4]
scoreboard players operation $total calc.dnt += $count calc.dnt
execute if score $total calc.dnt matches 12.. run return run function dnt:concat/by_nbt_parse
return run function dnt:concat/by_char_read