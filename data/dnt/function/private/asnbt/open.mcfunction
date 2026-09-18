# Each open container owns exactly one path component except the root.
execute if data storage dnt:ram asnbt.frame{kind:"compound"} run function dnt:private/asnbt/push_key
execute if data storage dnt:ram asnbt.frame{kind:"list"} run function dnt:private/asnbt/push_index with storage dnt:ram asnbt.stack[-1]
data modify storage dnt:ram asnbt.stack append value {kind:"list",index:0}
execute if data storage dnt:ram asnbt{token:"{"} run data modify storage dnt:ram asnbt.stack[-1].kind set value "compound"
