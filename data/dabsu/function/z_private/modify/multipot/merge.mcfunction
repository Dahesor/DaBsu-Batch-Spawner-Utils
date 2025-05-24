$data modify storage dabsu:run form set value $(form)

function dabsu:z_private/modify/take_spawn_data

execute if data storage dabsu:run form{index:0} run data remove storage dabsu:run form.equipment
data remove storage dabsu:run form.index

data modify block ~ ~ ~ SpawnPotentials[].data merge from storage dabsu:run form
execute if data storage dabsu:run form.equipment{loot_table:""} run data remove block ~ ~ ~ SpawnPotentials[].data.equipment

function dabsu:z_private/modify/update_self