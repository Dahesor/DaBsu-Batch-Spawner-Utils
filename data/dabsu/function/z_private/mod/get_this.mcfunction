data modify storage dabsu:run data set from entity @s data

execute unless function dabsu:z_private/mod/get_this/dimension_main run return fail
execute unless function dabsu:z_private/mod/get_this/chunk_main run return fail
execute unless function dabsu:z_private/mod/get_this/object_main run return fail
return 1