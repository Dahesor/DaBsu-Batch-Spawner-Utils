scoreboard players operation indent_count calc.dnt = depth calc.dnt
scoreboard players operation indent_count calc.dnt *= indent_space calc.dnt

data modify storage dnt:ram temp set value {res:"",space:" "}
execute if score indent_count calc.dnt matches 1.. run function dnt:private/pretty_print/space/add_spaces with storage dnt:ram temp

data modify storage dnt:ram space set from storage dnt:ram temp.res