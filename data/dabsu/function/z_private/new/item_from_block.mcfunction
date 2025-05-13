data modify storage dabsu:run spawner set from block ~ ~ ~
data remove storage dabsu:run spawner.z
data remove storage dabsu:run spawner.x
data remove storage dabsu:run spawner.y
data remove storage dabsu:run spawner.keepPacked
data remove storage dabsu:run spawner.id
data remove storage dabsu:run spawner.components

data modify storage dabsu:run item set value {id:"spawner",count:1b,components:{"minecraft:block_entity_data":{id:"mob_spawner"},tooltip_display:{hidden_components:["block_entity_data","entity_data"]}}}
data modify storage dabsu:run item.components."minecraft:block_entity_data" merge from storage dabsu:run spawner

function dabsu:z_private/mod/item_mod

execute at @s run function dabsu:z_private/mod/new_item