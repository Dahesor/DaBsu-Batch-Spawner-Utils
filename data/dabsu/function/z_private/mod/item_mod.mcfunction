data modify storage dabsu:run item.components."minecraft:item_name" set value [{translate:"block.minecraft.spawner"}," ",{translate:"",color:"aqua"},{text:""},{text:""}]
data modify storage dabsu:run item.components."minecraft:lore" set value []

data modify storage dabsu:run id set from storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials[0].data.entity.id
function dabsu:z_private/mod/get_translate
data modify storage dabsu:run item.components."minecraft:item_name"[2].translate set from storage dabsu:run translate


execute if data storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials[1].data.entity.id run data modify storage dabsu:run item.components."minecraft:item_name"[3].text set value "..."

data modify storage dabsu:run item.components."minecraft:lore" append from storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials[].data.entity.id
