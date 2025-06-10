execute if score $quoted calc.dnt matches 1.. run return run function dnt:private/json/key/check_coloum
data modify storage dnt:ram provided set value '"'
function dnt:private/json/insert_provided with storage dnt:ram
function dnt:private/json/append_char with storage dnt:ram
scoreboard players set $key calc.dnt 0
function dnt:private/json/main