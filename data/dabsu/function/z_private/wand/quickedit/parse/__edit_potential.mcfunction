$data modify storage dabsu:run element set from block ~ ~ ~ SpawnPotentials[$(index)]
execute if data storage dabsu:run element.data.custom_spawn_rules run data modify storage dabsu:run form.data.custom_spawn_rules set from storage dabsu:run element.data.custom_spawn_rules

execute if data storage dabsu:run element.data.equipment.slot_drop_chances if data storage dabsu:run form.data.equipment.loot_table run data modify storage dabsu:run form.data.equipment.slot_drop_chances set from storage dabsu:run element.data.equipment.slot_drop_chances

$data modify block ~ ~ ~ SpawnPotentials[$(index)] set from storage dabsu:run form
data modify block ~ ~ ~ SpawnData set from block ~ ~ ~ SpawnPotentials[0].data
data modify block ~ ~ ~ Delay set value 1s