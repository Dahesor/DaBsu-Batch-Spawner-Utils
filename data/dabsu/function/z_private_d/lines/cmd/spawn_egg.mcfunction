function dabsu:z_private_d/uid/get
scoreboard players remove #input input.dabsu 100
data modify storage dabsu:run run set value {index:0}
execute store result storage dabsu:run run.index int 1 run scoreboard players get #input input.dabsu
function dabsu:z_priq/edit/equipment/__get_item with storage dabsu:run run

data modify storage dabsu:run entity_data set value {id:"pig"}
data modify storage dabsu:run entity_data merge from storage dabsu:run item.components."minecraft:entity_data"
data modify storage dabsu:run entity_list set value []
data modify storage dabsu:run entity_list append from storage dabsu:run entity_data

data modify storage dabsu:run item set value {id:"spawner",count:1,components:{"minecraft:block_entity_data":{id:"mob_spawner",SpawnPotentials:[]},tooltip_display:{hidden_components:["block_entity_data","entity_data"]}}}
data modify storage dabsu:run item.components."minecraft:block_entity_data" merge from storage dabsu:run defaultSpawner
execute if data storage dabsu:run entity_list[0] run function dabsu:z_private/new/loop_entry
function dabsu:z_private/mod/item_mod


data modify storage dabsu:run equipment set value {}
data modify storage dabsu:run equipment.mainhand set from storage dabsu:run item

execute at @s run summon item ~ ~ ~ {Item:{id:"barrier"},Tags:["dabsu.temp"]}
execute at @s as @e[type=item,tag=dabsu.temp,distance=..0.1] run function dabsu:z_priq/edit/equipment/copied_item