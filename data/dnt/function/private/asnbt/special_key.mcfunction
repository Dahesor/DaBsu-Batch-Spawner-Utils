# Preserve the original SNBT spelling, then decode it for the raw path list.
data modify storage dnt:ram asnbt.parts append from storage dnt:ram asnbt.token.text
data modify storage dnt:ram asnbt.parts append from storage dnt:ram asnbt.token.extra[0].text
data modify storage dnt:ram asnbt.parts append from storage dnt:ram asnbt.token.extra[1]
data modify storage dnt:ram in set value []
data modify storage dnt:ram in append from storage dnt:ram asnbt.token.text
data modify storage dnt:ram in append from storage dnt:ram asnbt.token.extra[0].text
data modify storage dnt:ram in append from storage dnt:ram asnbt.token.extra[1]
function dnt:concat
data modify storage dnt:ram asnbt.macro.key set from storage dnt:ram out
function dnt:private/asnbt/decode_key with storage dnt:ram asnbt.macro
