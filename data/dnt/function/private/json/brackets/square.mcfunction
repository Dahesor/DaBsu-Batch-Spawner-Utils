#function dnt:private/json/indent/get
#scoreboard players add $indent calc.dnt 1
data modify storage dnt:ram brackets append value "["
scoreboard players add $list calc.dnt 1
scoreboard players set $bracket calc.dnt 0
scoreboard players reset $boolean calc.dnt


#data modify storage dnt:ram provided set from storage dnt:ram indent
#function dnt:private/json/insert_provided with storage dnt:ram
function dnt:private/json/append_char with storage dnt:ram

#data modify storage dnt:ram provided set from storage dnt:ram new_line
#function dnt:private/json/insert_provided with storage dnt:ram



function dnt:private/json/main