#Get Type
data modify storage dabsu:run spawner set value {SpawnPotentials:[]}
data modify storage dabsu:run temp2 set value {type:-1}
data modify storage dabsu:run temp2.type set from storage dabsu:user data[0].editing.history[0]
function dabsu:z_private/mod/__get_type with storage dabsu:run temp2


data modify storage dabsu:run form set value {}
data modify storage dabsu:run form.form.tag set from storage dabsu:run spawner.SpawnPotentials

execute as @e[type=marker,distance=..0.2,limit=1,tag=dabsu.marker] run function dabsu:z_private/modify/multipot/rewrite_nbt with storage dabsu:run form