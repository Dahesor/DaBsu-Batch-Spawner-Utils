dialog clear @s
data modify storage dabsu:run nbt set value {}
$data modify storage dabsu:run nbt set value $(form)
data modify storage dnt:ram in set value []
data modify storage dnt:ram in append from storage dabsu:run nbt.obj
function dnt:remove_newline
data modify storage dabsu:run nbt.obj set from storage dnt:ram out
function dabsu:z_private_d/batch/link/select/nbt_mod with storage dabsu:run nbt
function dabsu:select/nbt/set