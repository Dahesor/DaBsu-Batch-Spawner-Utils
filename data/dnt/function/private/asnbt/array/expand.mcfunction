# The rendered prefix and its trailing comma are already in parts.
# Resolve paths against the saved input in dnt:ram asnbt.source.
execute unless data storage dnt:ram asnbt.frame{kind:"array"} run return run data modify storage dnt:ram asnbt.failed set value 1b
data modify storage dnt:ram in set value ["asnbt.source"]
data modify storage dnt:ram in append from storage dnt:ram asnbt.segments[]
function dnt:concat
data modify storage dnt:ram asnbt.macro.path set from storage dnt:ram out
data remove storage dnt:ram asnbt.array
function dnt:private/asnbt/array/read with storage dnt:ram asnbt.macro
execute unless data storage dnt:ram asnbt.array run return run data modify storage dnt:ram asnbt.failed set value 1b
data modify storage dnt:ram asnbt.macro.index set from storage dnt:ram asnbt.stack[-1].index
execute store result score #length asnbt.dnt run data get storage dnt:ram asnbt.array
execute store result score #index asnbt.dnt run data get storage dnt:ram asnbt.macro.index
execute unless score #index asnbt.dnt < #length asnbt.dnt run return run data modify storage dnt:ram asnbt.failed set value 1b
function dnt:private/asnbt/array/loop with storage dnt:ram asnbt.macro
