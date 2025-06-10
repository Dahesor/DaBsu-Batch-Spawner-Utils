execute if data storage dnt:ram {char:","} run scoreboard players reset $boolean calc.dnt
execute if data storage dnt:ram {char:","} run return run scoreboard players set $key calc.dnt 1
execute if score $string calc.dnt matches 0 if data storage dnt:ram {char:'"'} run return run function dnt:private/json/value/string_start
execute if score $string calc.dnt matches 0 if data storage dnt:ram {char:"'"} run return run function dnt:private/json/value/string_start_single