#scoreboard players remove $indent calc.dnt 1
data remove storage dnt:ram brackets[-1]
scoreboard players set $key calc.dnt 0
scoreboard players reset $boolean calc.dnt
scoreboard players remove $list calc.dnt 1

#data modify storage dnt:ram provided set from storage dnt:ram new_line
#function dnt:private/json/insert_provided with storage dnt:ram


data modify storage dnt:ram temp set from storage dnt:ram brackets[-1]
execute if data storage dnt:ram {temp:"{"} run scoreboard players set $bracket calc.dnt 1
function dnt:private/json/append_char with storage dnt:ram
function dnt:private/json/main