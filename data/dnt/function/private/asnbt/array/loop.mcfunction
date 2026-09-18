# Read the primitive directly: no scoreboard conversion or precision loss for longs.
data remove storage dnt:ram asnbt.element
$data modify storage dnt:ram asnbt.element set string storage dnt:ram asnbt.array[$(index)]
execute unless data storage dnt:ram asnbt.element run return run data modify storage dnt:ram asnbt.failed set value 1b
data modify storage dnt:ram asnbt.parts append from storage dnt:ram asnbt.element
execute store result storage dnt:ram asnbt.macro.index int 1 run scoreboard players add #index asnbt.dnt 1
execute if score #index asnbt.dnt < #length asnbt.dnt run data modify storage dnt:ram asnbt.parts append value ","
execute if score #index asnbt.dnt < #length asnbt.dnt run function dnt:private/asnbt/array/loop with storage dnt:ram asnbt.macro
