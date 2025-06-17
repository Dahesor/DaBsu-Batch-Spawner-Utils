execute if score $processed calc.dnt matches 1 run return fail
execute unless data storage dnt:ram {char:"-"} \
        unless data storage dnt:ram {char:"0"} \
        unless data storage dnt:ram {char:"1"} \
        unless data storage dnt:ram {char:"2"} \
        unless data storage dnt:ram {char:"3"} \
        unless data storage dnt:ram {char:"4"} \
        unless data storage dnt:ram {char:"5"} \
        unless data storage dnt:ram {char:"6"} \
        unless data storage dnt:ram {char:"7"} \
        unless data storage dnt:ram {char:"8"} \
        unless data storage dnt:ram {char:"9"} \
        unless data storage dnt:ram {char:"."} \
run return run function dnt:private/json/main

execute unless score $boolean calc.dnt matches 1 if data storage dnt:ram {char:"0"} run return run function dnt:private/json/value/boolean
execute unless score $boolean calc.dnt matches 1 if data storage dnt:ram {char:"1"} run return run function dnt:private/json/value/boolean

function dnt:private/json/content/normal