execute unless data storage dabsu:run item_list_stack[0][0] run return fail
data modify storage dabsu:run text_stack[0] append value {atlas:"items",sprite:"item/structure_void"}
execute if data storage dabsu:run item_list_stack[0][0].id run data modify storage dabsu:run id set from storage dabsu:run item_list_stack[0][0].id
execute if data storage dabsu:run item_list_stack[0][0].id run function dabsu:z_private/mod/remove_minecraft

data modify storage dabsu:run run set value {id:"",atlas:"item"}
data modify storage dabsu:run run.id set from storage dabsu:run id

execute if data storage dabsu:run item_list_stack[0][0].id positioned ~ 10000 ~ summon item_display run function dabsu:z_private/mod/item_mod_atlas_classify


execute if data storage dabsu:run item_list_stack[0][0].id run function dabsu:z_private/mod/__make_atlas with storage dabsu:run run

data remove storage dabsu:run item_list_stack[0][0]
function dabsu:z_private/mod/item_mod_atlas