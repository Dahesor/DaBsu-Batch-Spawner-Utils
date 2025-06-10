data modify storage dnt:ram concat.escape set value "\\"
execute unless score $slash_count calc.dnt matches 1.. run return 1
function dnt:private/concat/get_slash/loop with storage dnt:ram concat