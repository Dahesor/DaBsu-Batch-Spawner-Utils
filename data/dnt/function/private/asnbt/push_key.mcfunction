function dnt:private/asnbt/key_path
data modify storage dnt:ram asnbt.path append from storage dnt:ram asnbt.stack[-1].key
data modify storage dnt:ram asnbt.segments append from storage dnt:ram asnbt.stack[-1].segment
