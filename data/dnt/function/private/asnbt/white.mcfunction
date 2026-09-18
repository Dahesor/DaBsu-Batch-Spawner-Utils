execute if data storage dnt:ram asnbt{token:""} run return 1
execute if data storage dnt:ram asnbt{token:" "} run return 1
execute if data storage dnt:ram asnbt{token:"{"} run function dnt:private/asnbt/open
execute if data storage dnt:ram asnbt{token:"["} run function dnt:private/asnbt/open
execute if data storage dnt:ram asnbt{token:"}"} run function dnt:private/asnbt/close
execute if data storage dnt:ram asnbt{token:"]"} run function dnt:private/asnbt/close
execute if data storage dnt:ram asnbt{token:","} unless data storage dnt:ram asnbt.frame{kind:"compound"} run function dnt:private/asnbt/increment
data modify storage dnt:ram asnbt.parts append from storage dnt:ram asnbt.token
