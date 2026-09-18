execute store result storage dnt:ram pcat.count int 1 run data get storage dnt:ram concat.in
execute if data storage dnt:ram concat.in[0] run function dnt:private/pcat/concat/bin/main_single with storage dnt:ram pcat
data modify storage dnt:ram concat.in set value []
data modify storage dnt:ram concat.in append from storage dnt:ram out
scoreboard players set $count calc.dnt 1