scoreboard players set $escape calc.dnt 0

execute if data storage dnt:ram {char:"\\"} run function dnt:private/json/content/slash_insert
execute if data storage dnt:ram {char:"\\"} run return run function dnt:private/json/main

execute if data storage dnt:ram {char:"'"} run return run function dnt:private/json/content/cancel_escape

function dnt:private/json/content/normal