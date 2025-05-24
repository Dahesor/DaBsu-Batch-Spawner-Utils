$data modify storage dabsu:run form set value $(form)

data modify storage dabsu:run temp2 set value {entity:{}}

data modify block ~ ~ ~ SpawnData set from storage dabsu:run temp2
#tellraw @a {nbt:"form",storage:"dabsu:run"}
data modify block ~ ~ ~ SpawnPotentials set from storage dabsu:run form.tag



function dabsu:z_private/modify/update_self