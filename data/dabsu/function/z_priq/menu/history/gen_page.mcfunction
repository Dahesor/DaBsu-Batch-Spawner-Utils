data modify storage dabsu:run run set value {ot:0,oc:0,nt:0,nc:0}
data modify storage dabsu:run run.nt set from storage dabsu:user data[0].target.type
data modify storage dabsu:run run.ot set from storage dabsu:user data[0].editing.history[0]
data modify storage dabsu:run nbt set value {}
data modify storage dabsu:run nbt.i set from storage dabsu:run run.ot
execute store result storage dabsu:run run.oc int 1 run function dabsu:z_priq/menu/history/__get_type_amount with storage dabsu:run nbt
data modify storage dabsu:run nbt.i set from storage dabsu:run run.nt
execute store result storage dabsu:run run.nc int 1 run function dabsu:z_priq/menu/history/__get_type_amount with storage dabsu:run nbt
function dabsu:z_priq/menu/history/__gen_page with storage dabsu:run run