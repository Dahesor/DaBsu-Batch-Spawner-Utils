data modify storage dabsu:run item set value {id:"spawner",count:1,components:{"minecraft:block_entity_data":{id:"mob_spawner",SpawnPotentials:[]},tooltip_display:{hidden_components:["block_entity_data","entity_data"]}}}
data modify storage dabsu:run item.components."minecraft:block_entity_data" merge from storage dabsu:run defaultSpawner
execute if data storage dabsu:run entity_list[0] run function dabsu:z_private/new/loop_entry
function dabsu:z_private/new/default_light

function dabsu:z_private/mod/item_mod

execute at @s run function dabsu:z_private/mod/new_item