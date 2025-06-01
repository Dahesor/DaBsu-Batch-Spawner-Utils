data modify storage dabsu:run dialog.dialog.body[1].item.components."minecraft:max_stack_size" set value 99
data remove storage dabsu:run dialog.dialog.body[1].item.components."minecraft:damage"
data remove storage dabsu:run dialog.dialog.body[1].item.components."minecraft:max_damage"
data modify storage dabsu:run nbt set value {i:0}
$execute store result storage dabsu:run nbt.i int 1 if data storage dabsu:run Dimensions[].Chunks[].Objects[{type:$(type)}]
data modify storage dabsu:run dialog.dialog.body[1].item.count set from storage dabsu:run nbt.i
execute unless data storage dabsu:run dialog.dialog.body[1].item.components."minecraft:lore" run data modify storage dabsu:run dialog.dialog.body[1].item.components."minecraft:lore" set value []
function dabsu:z_priq/menu/gen/insert_lore with storage dabsu:run nbt