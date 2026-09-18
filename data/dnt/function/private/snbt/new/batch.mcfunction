scoreboard players set $count calc.dnt 0
execute store result storage dnt:ram concat.count int 1 run data get storage dnt:ram concat.in
execute unless data storage dnt:ram concat{count:0} run function dnt:private/pcat/concat/bin/main_single with storage dnt:ram concat
execute unless data storage dnt:ram concat{count:0} run data modify storage dnt:ram in append from storage dnt:ram out
data modify storage dnt:ram concat.in set value []