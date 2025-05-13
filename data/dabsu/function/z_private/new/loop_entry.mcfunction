data modify storage dabsu:run element set from storage dabsu:run defaultElement

data modify storage dabsu:run element.data.custom_spawn_rules set value {block_light_limit:[0,0],sky_light_limit:[0,0]}
execute store result storage dabsu:run element.data.custom_spawn_rules.block_light_limit[0] int 1 run scoreboard players get minDefaultBlockLight Option.dabsu
execute store result storage dabsu:run element.data.custom_spawn_rules.block_light_limit[1] int 1 run scoreboard players get maxDefaultBlockLight Option.dabsu
execute store result storage dabsu:run element.data.custom_spawn_rules.sky_light_limit[1] int 1 run scoreboard players get minDefaultSkyLight Option.dabsu
execute store result storage dabsu:run element.data.custom_spawn_rules.sky_light_limit[1] int 1 run scoreboard players get maxDefaultSkyLight Option.dabsu

data modify storage dabsu:run element.data.entity set from storage dabsu:run entity_list[0]
data modify storage dabsu:run item.components."minecraft:block_entity_data".SpawnPotentials append from storage dabsu:run element
data remove storage dabsu:run entity_list[0]
execute if data storage dabsu:run entity_list[0] run function dabsu:z_private/new/loop_entry