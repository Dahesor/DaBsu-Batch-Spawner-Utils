data modify storage dabsu:run dialog.dialog.body[1].item.components."minecraft:max_stack_size" set value 99
data remove storage dabsu:run dialog.dialog.body[1].item.components."minecraft:damage"
data remove storage dabsu:run dialog.dialog.body[1].item.components."minecraft:max_damage"
$execute store result storage dabsu:run dialog.dialog.body[1].item.count int 1 if data storage dabsu:run Dimensions[].Chunks[].Objects[{type:$(type)}]