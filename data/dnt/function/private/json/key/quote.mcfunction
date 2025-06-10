execute if data storage dnt:ram {char:'"'} run return run function dnt:private/json/key/quoted
execute if data storage dnt:ram {char:"'"} run return run function dnt:private/json/key/quoted_single
data modify storage dnt:ram provided set value '"'
function dnt:private/json/insert_provided with storage dnt:ram
function dnt:private/json/append_char with storage dnt:ram
scoreboard players set $key calc.dnt 2
function dnt:private/json/main