execute if data storage dnt:ram asnbt{key_remaining:""} run return 1
data modify storage dnt:ram asnbt.char set string storage dnt:ram asnbt.key_remaining 0 1
execute if data storage dnt:ram asnbt{char:'"'} run data modify storage dnt:ram in append value "\\"
execute if data storage dnt:ram asnbt{char:"\\"} run data modify storage dnt:ram in append value "\\"
data modify storage dnt:ram in append from storage dnt:ram asnbt.char
data modify storage dnt:ram asnbt.key_remaining set string storage dnt:ram asnbt.key_remaining 1
function dnt:private/asnbt/key_char
