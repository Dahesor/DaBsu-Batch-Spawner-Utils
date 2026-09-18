# Clear the remainder for every batch, including the final batch of a layer.
data modify storage dnt:ram pcat.remainder set value []
execute store result score $count calc.dnt run data get storage dnt:ram concat.in
execute if score $count calc.dnt matches 256.. run function dnt:private/concat/combine/remainder
# The macro count must describe the extracted batch, not the original queue.
execute store result storage dnt:ram pcat.count int 1 run data get storage dnt:ram concat.in
function dnt:private/pcat/concat/bin/main_single with storage dnt:ram pcat
data modify storage dnt:ram result append from storage dnt:ram out
data modify storage dnt:ram concat.in set from storage dnt:ram pcat.remainder
execute if data storage dnt:ram concat.in[0] run function dnt:private/concat/joint_loop
