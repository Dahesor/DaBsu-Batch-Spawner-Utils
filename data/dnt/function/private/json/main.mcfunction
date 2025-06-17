scoreboard players set $processed calc.dnt 0
scoreboard players set $skip_final calc.dnt 0
execute unless function dnt:private/json/next_char run return run function dnt:private/json/joint/start

#Escaped
execute if score $escape calc.dnt matches 1 run return run function dnt:private/json/content/escaped

#Brackets
execute unless score $string calc.dnt matches 1.. if data storage dnt:ram {char:"["} run return run function dnt:private/json/brackets/square
execute unless score $string calc.dnt matches 1.. if data storage dnt:ram {char:"]"} run return run function dnt:private/json/brackets/square_end
execute unless score $string calc.dnt matches 1.. if data storage dnt:ram {char:"{"} run return run function dnt:private/json/brackets/curly
execute unless score $string calc.dnt matches 1.. if data storage dnt:ram {char:"}"} run return run function dnt:private/json/brackets/curly_end
execute if score $list calc.dnt matches 1.. unless score $bracket calc.dnt matches 1.. run scoreboard players set $key calc.dnt 0
#Splits

#Key
execute if score $key calc.dnt matches 1 if score $bracket calc.dnt matches 1 run return run function dnt:private/json/key/quote
execute if score $key calc.dnt matches 2 if score $bracket calc.dnt matches 1 if data storage dnt:ram {char:":"} run return run function dnt:private/json/key/quote_end
execute if score $key calc.dnt matches 2 if score $bracket calc.dnt matches 1 if score $quoted calc.dnt matches 1 if data storage dnt:ram {char:'"'} run return run function dnt:private/json/key/end_quoted
execute if score $key calc.dnt matches 2 if score $bracket calc.dnt matches 1 if score $quoted calc.dnt matches 2 if data storage dnt:ram {char:"'"} run return run function dnt:private/json/key/end_quoted_single

execute if score $key calc.dnt matches 2 if score $bracket calc.dnt matches 1 if score $quoted calc.dnt matches 2 if data storage dnt:ram {char:'"'} run function dnt:private/json/content/slash_insert

# Value
execute if score $key calc.dnt matches 0 run function dnt:private/json/value/quote_starts
execute if score $key calc.dnt matches 0 unless score $string calc.dnt matches 1.. run return run function dnt:private/json/value/numeric
execute if score $key calc.dnt matches 0 unless score $processed calc.dnt matches 1.. run function dnt:private/json/value/quote_ends

execute if score $key calc.dnt matches 0 if score $string calc.dnt matches 3 if data storage dnt:ram {char:'"'} run function dnt:private/json/content/slash_insert

function dnt:private/json/content/normal