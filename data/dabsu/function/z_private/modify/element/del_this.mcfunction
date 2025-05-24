$function dabsu:z_private/modify/element/__remove_index $(form)

data modify storage dabsu:run temp2 set value {entity:{}}
data modify block ~ ~ ~ SpawnData set from storage dabsu:run temp2
function dabsu:z_private/modify/update_self