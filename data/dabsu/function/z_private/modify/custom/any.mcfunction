data modify storage dabsu:run stack prepend value {}
$data modify storage dabsu:run stack[0].data.line set value '$(line)'
$data modify storage dabsu:run stack[0].data.for_each set value $(for_each)

execute if data storage dabsu:run stack[0].data{for_each:false} run return run function dabsu:z_private/modify/custom/__per_block with storage dabsu:run stack[0].data

data modify storage dabsu:run stack[0].data.entry set from block ~ ~ ~ SpawnPotentials
execute store result score $t calc.dabsu run data get storage dabsu:run stack[0].data.entry
execute if score $t calc.dabsu matches 1.. run function dabsu:z_private/modify/custom/per_entry
data modify block ~ ~ ~ SpawnPotentials set from storage dabsu:run stack[0].data.entry

function dabsu:z_private/modify/update_self
data remove storage dabsu:run stack[0]