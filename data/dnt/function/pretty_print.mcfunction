## Input:
##    storage dnt:ram in
##    storage dnt:ram args
## Output:
##    storage dnt:ram out
## This function converts the input NBT into SNBT in the form of a pretty-printed string, with new lines and indentations.
## args[0] = max indent (default 12)
## args[1] = indent space count (default 2)

execute unless data storage dnt:ram in run return run function dnt:private/snbt/no_input
scoreboard objectives remove calc.dnt
scoreboard objectives add calc.dnt dummy

scoreboard players set max_indent calc.dnt 12
scoreboard players set indent_space calc.dnt 2
execute if data storage dnt:ram args[0] store result score max_indent calc.dnt run data get storage dnt:ram args[0]
execute if data storage dnt:ram args[1] store result score indent_space calc.dnt run data get storage dnt:ram args[1]

execute summon text_display if function dnt:private/pretty_print/get_printed run return 1

data modify storage dnt:ram out set value "DNT ERROR: UNKNOWN ERROR"
return 0