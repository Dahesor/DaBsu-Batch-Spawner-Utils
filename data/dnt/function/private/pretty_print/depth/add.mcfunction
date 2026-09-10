data modify storage dnt:ram temp set value ""
data modify storage dnt:ram temp set from storage dnt:ram pt[1]
execute if data storage dnt:ram {text:"{",temp:"}"} run return run function dnt:private/pretty_print/depth/skip
execute if data storage dnt:ram {text:"[",temp:"]"} run return run function dnt:private/pretty_print/depth/skip


scoreboard players add depth calc.dnt 1
execute if score depth calc.dnt >= max_indent calc.dnt run return fail

data modify storage dnt:ram in append value "\n"
function dnt:private/pretty_print/space/generate
data modify storage dnt:ram in append from storage dnt:ram space
