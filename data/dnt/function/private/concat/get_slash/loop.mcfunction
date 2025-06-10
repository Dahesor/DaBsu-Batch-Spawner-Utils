$data modify storage dnt:ram concat.escape set value "$(escape)$(escape)$(escape)$(escape)\\"
scoreboard players remove $slash_count calc.dnt 1
execute if score $slash_count calc.dnt matches 1.. run function dnt:private/concat/get_slash/loop with storage dnt:ram concat