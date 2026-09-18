## main logic: concat at max 256 segments of strings

# First figure out the leading quotation mark
data modify storage dnt:ram in prepend value "!"
data modify entity @s text set value {storage:"dnt:ram",nbt:"in[]",plain:true,separator:""}
data modify storage dnt:ram pcat.raw append from entity @s text.extra[].extra[]

# Insert the invert quotation mark
function dnt:private/pcat/classify/make_segments

# Parse Again
function dnt:private/pcat/process/parse_again

# Count number of segments
execute store result score $count calc.dnt run data get storage dnt:ram pcat.seg

# Remove the head character (the quote inserted)
scoreboard players operation $this calc.dnt = $count calc.dnt
function dnt:private/pcat/process/remove_head

# Macro Concat
execute store result storage dnt:ram pcat.count int 1 run scoreboard players get $count calc.dnt
data modify storage dnt:ram concat.in set value []
data modify storage dnt:ram concat.in append from storage dnt:ram pcat.seg[].value
function dnt:private/pcat/concat/bin/main_double with storage dnt:ram pcat