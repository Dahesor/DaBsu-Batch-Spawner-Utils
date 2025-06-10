execute if score $skip_final calc.dnt matches 1 run return run function dnt:private/json/main

execute if data storage dnt:ram {char:"'"} run return run function dnt:private/json/content/single_quote
execute if data storage dnt:ram {char:"\\"} run return run function dnt:private/json/content/slash

function dnt:private/json/append_char with storage dnt:ram
function dnt:private/json/main