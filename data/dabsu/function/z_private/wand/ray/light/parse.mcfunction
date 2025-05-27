execute unless data storage dabsu:run element.data.custom_spawn_rules.block_light_limit run data modify storage dabsu:run element.data.custom_spawn_rules.block_light_limit set value [0,15]
execute unless data storage dabsu:run element.data.custom_spawn_rules.sky_light_limit run data modify storage dabsu:run element.data.custom_spawn_rules.sky_light_limit set value [0,15]

#Special case
data modify storage dabsu:run nbt.list set value []
execute unless data storage dabsu:run element.data.custom_spawn_rules.block_light_limit[1] run data modify storage dabsu:run nbt.list append from storage dabsu:run element.data.custom_spawn_rules.block_light_limit
execute if data storage dabsu:run nbt.list[0] run data modify storage dabsu:run nbt.list append from storage dabsu:run nbt.list[0]
execute if data storage dabsu:run nbt.list[0] run data modify storage dabsu:run element.data.custom_spawn_rules.block_light_limit set from storage dabsu:run nbt.list

data modify storage dabsu:run nbt.list set value []
execute unless data storage dabsu:run element.data.custom_spawn_rules.sky_light_limit[1] run data modify storage dabsu:run nbt.list append from storage dabsu:run element.data.custom_spawn_rules.sky_light_limit
execute if data storage dabsu:run nbt.list[0] run data modify storage dabsu:run nbt.list append from storage dabsu:run nbt.list[0]
execute if data storage dabsu:run nbt.list[0] run data modify storage dabsu:run element.data.custom_spawn_rules.sky_light_limit set from storage dabsu:run nbt.list