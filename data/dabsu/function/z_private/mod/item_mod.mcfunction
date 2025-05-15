data modify storage dabsu:run item.components."minecraft:item_name" set value [{translate:"block.minecraft.spawner"}," ",{translate:"",color:"aqua"},{text:""},{text:""}]
data modify storage dabsu:run item.components."minecraft:lore" set value []

data modify storage dabsu:run id set from storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials[0].data.entity.id
function dabsu:z_private/mod/get_translate
data modify storage dabsu:run item.components."minecraft:item_name"[2].translate set from storage dabsu:run translate


execute if data storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials[1].data.entity.id run data modify storage dabsu:run item.components."minecraft:item_name"[3].text set value "..."

data modify storage dabsu:run item.components."minecraft:lore" append from storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials[].data.entity.id

data modify storage dabsu:run element set from storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials
data modify storage dabsu:run item.components."minecraft:custom_data".dabsu.Potential.Potential set from storage dabsu:run element
data modify storage dabsu:run item.components."minecraft:custom_data".dabsu.Potential.type set value -1
data modify storage dabsu:run item.components."minecraft:custom_data".dabsu.saved_potential set value 1b
execute store result storage dabsu:run item.components."minecraft:custom_data".dabsu.Potential.type int 1 run return run function dabsu:z_private/mod/check_type/this