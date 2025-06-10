function dnt:private/json/peek_char
execute if data storage dnt:ram {char:"0"} run data modify storage dnt:ram provided set value "0"
execute if data storage dnt:ram {char:"1"} run data modify storage dnt:ram provided set value "1"
execute if data storage dnt:ram {char:"0"} if data storage dnt:ram {temp:"b"} run data modify storage dnt:ram provided set value "false"
execute if data storage dnt:ram {char:"1"} if data storage dnt:ram {temp:"b"} run data modify storage dnt:ram provided set value "true"
scoreboard players set $boolean calc.dnt 1
function dnt:private/json/insert_provided with storage dnt:ram
function dnt:private/json/main