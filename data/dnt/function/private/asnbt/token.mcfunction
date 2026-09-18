# Quoted keys are wrapper components with an aqua child, not string values.
execute if data storage dnt:ram asnbt.token.extra run return run function dnt:private/asnbt/special_key
execute if data storage dnt:ram asnbt.token{color:"aqua"} run return run function dnt:private/asnbt/key
execute if data storage dnt:ram asnbt.token{color:"gray",text:"<...>"} run return run function dnt:private/asnbt/array/expand
execute if data storage dnt:ram asnbt{previous:"["} if data storage dnt:ram asnbt.token{color:"red",text:"B"} run data modify storage dnt:ram asnbt.stack[-1].kind set value "array"
execute if data storage dnt:ram asnbt{previous:"["} if data storage dnt:ram asnbt.token{color:"red",text:"I"} run data modify storage dnt:ram asnbt.stack[-1].kind set value "array"
execute if data storage dnt:ram asnbt{previous:"["} if data storage dnt:ram asnbt.token{color:"red",text:"L"} run data modify storage dnt:ram asnbt.stack[-1].kind set value "array"
execute if data storage dnt:ram asnbt.token.text run return run data modify storage dnt:ram asnbt.parts append from storage dnt:ram asnbt.token.text
function dnt:private/asnbt/white
