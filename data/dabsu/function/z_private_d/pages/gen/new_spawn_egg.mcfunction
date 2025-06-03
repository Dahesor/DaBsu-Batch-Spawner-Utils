data modify storage dabsu:run item set from storage dabsu:run item_list[0]
data remove storage dabsu:run item_list[0]
execute unless data storage dabsu:run item.components."minecraft:entity_data".id if data storage dabsu:run item_list[0] run function dabsu:z_private_d/pages/gen/new_spawn_egg
execute unless data storage dabsu:run item.components."minecraft:entity_data".id unless data storage dabsu:run item_list[0] run return 1

data modify storage dabsu:run run set value {index:100}
execute store result storage dabsu:run run.index int 1 run scoreboard players get $this input.dabsu
scoreboard players add $this input.dabsu 1

function dabsu:z_private_d/pages/gen/__spawnegg_entry with storage dabsu:run run
data modify storage dabsu:user data[0].Inv append from storage dabsu:run item

execute if data storage dabsu:run item_list[0] run function dabsu:z_private_d/pages/gen/new_spawn_egg