data modify storage dabsu:run id set from storage dabsu:run spawner.SpawnPotentials[0].data.entity.id
execute if function dabsu:z_private/placed/default/find_coloum run return run function dabsu:z_private/placed/default/passed
data modify storage dabsu:run run set value {id:""}
data modify storage dabsu:run run.id set from storage dabsu:run spawner.SpawnPotentials[0].data.entity.id
function dabsu:z_private/placed/default/__add_namespace with storage run
function dabsu:z_private/placed/default/passed

give @s spawner[block_entity_data={id:"mob_spawner",SpawnPotentials:[{data:{entity:{id:"zombie"}},weight:1}]}]