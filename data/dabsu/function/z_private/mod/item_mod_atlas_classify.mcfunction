data modify entity @s item set from storage dabsu:run item_list_stack[0][0]
execute if items entity @s contents #dabsu:is_block_atlas run data modify storage dabsu:run run.atlas set value "block"
kill