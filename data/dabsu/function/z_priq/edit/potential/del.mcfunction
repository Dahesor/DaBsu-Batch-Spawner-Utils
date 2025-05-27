data modify storage dabsu:run run_custom.args set value {form:{index:0}}
data modify storage dabsu:run run_custom.args.form.index set from storage dabsu:user data[0].editing.index
execute as @e[type=marker,distance=..0.2,limit=1,tag=dabsu.marker] run function dabsu:z_private/modify/element/del_this with storage dabsu:run run_custom.args