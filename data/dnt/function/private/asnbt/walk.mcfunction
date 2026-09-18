execute unless data storage dnt:ram asnbt.tokens[0] run return 1
execute if data storage dnt:ram asnbt{failed:1b} run return 0
data modify storage dnt:ram asnbt.token set from storage dnt:ram asnbt.tokens[0]
data remove storage dnt:ram asnbt.frame
data modify storage dnt:ram asnbt.frame set from storage dnt:ram asnbt.stack[-1]
function dnt:private/asnbt/token
data modify storage dnt:ram asnbt.previous set from storage dnt:ram asnbt.token
data remove storage dnt:ram asnbt.tokens[0]
function dnt:private/asnbt/walk
