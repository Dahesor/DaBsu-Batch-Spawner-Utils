say 1
function dabsu:z_private/new/get_entity_id

execute if score $ray calc.dabsu matches 1 run function dabsu:z_private/new/entity_equips
execute if score $ray calc.dabsu matches 2 run function dabsu:z_private/new/entity_copy_all


data modify storage dabsu:run item set value {id:"spawner",count:1,components:{"minecraft:block_entity_data":{id:"mob_spawner",SpawnPotentials:[]},tooltip_display:{hidden_components:["block_entity_data","entity_data"]}}}
data modify storage dabsu:run item.components."minecraft:block_entity_data" merge from storage dabsu:run defaultSpawner
data modify storage dabsu:run entity_list set value []
data modify storage dabsu:run entity_list append from storage dabsu:run entity_data

execute if data storage dabsu:run entity_list[0] run function dabsu:z_private/new/loop_entry
function dabsu:z_private/new/default_light

function dabsu:z_private/mod/item_mod

execute at @p[tag=dabsu.caster] run function dabsu:z_private/mod/new_item

return 1