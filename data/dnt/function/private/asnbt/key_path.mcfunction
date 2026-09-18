data modify storage dnt:ram asnbt.key_remaining set from storage dnt:ram asnbt.stack[-1].key
data modify storage dnt:ram in set value [".",'"']
function dnt:private/asnbt/key_char
data modify storage dnt:ram in append value '"'
function dnt:concat
data modify storage dnt:ram asnbt.stack[-1].segment set from storage dnt:ram out
