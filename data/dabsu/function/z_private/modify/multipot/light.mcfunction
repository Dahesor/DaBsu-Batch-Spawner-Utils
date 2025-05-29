$data modify storage dabsu:run form set value $(form)
function dabsu:z_private/modify/take_spawn_data

execute if data storage dabsu:run form{index:0} run data remove block ~ ~ ~ SpawnPotentials[].data.custom_spawn_rules
execute unless data storage dabsu:run form{index:0} run data modify block ~ ~ ~ SpawnPotentials[].data.custom_spawn_rules set from storage dabsu:run form.custom_spawn_rules
function dabsu:z_private/modify/update_self