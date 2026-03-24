data modify storage dabsu:run spawner set value {SpawnPotentials:[]}
data modify storage dabsu:run temp2 set value {type:-1}
execute store result storage dabsu:run temp2.type int 1 run scoreboard players get $SelectedType selected.dabsu
function dabsu:z_private/mod/__get_type with storage dabsu:run temp2

data modify storage dnt:ram in set from storage dabsu:run spawner.SpawnPotentials
function dnt:get_snbt
data modify storage dabsu:run dialog.dialog.inputs[0].initial set from storage dnt:ram out