$data modify storage dnt:ram temp.res set value "$(res)$(space)"

scoreboard players remove indent_count calc.dnt 1
execute if score indent_count calc.dnt matches 1.. run function dnt:private/pretty_print/space/add_spaces with storage dnt:ram temp