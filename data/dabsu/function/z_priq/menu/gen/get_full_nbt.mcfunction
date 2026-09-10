data modify storage dnt:ram args set value 0
data modify storage dnt:ram in set from block ~ ~ ~ SpawnPotentials
execute if data storage dabsu:user data[0].settings{useNBTPrettyPrint:true} run function dnt:pretty_print
execute if data storage dabsu:user data[0].settings{useNBTPrettyPrint:true} run data modify storage dabsu:run dialog.dialog.inputs[0].initial set from storage dnt:ram out
data modify storage dnt:ram in set from block ~ ~ ~ SpawnPotentials
function dnt:get_snbt
execute unless data storage dabsu:user data[0].settings{useNBTPrettyPrint:true} run data modify storage dabsu:run dialog.dialog.inputs[0].initial set from storage dnt:ram out