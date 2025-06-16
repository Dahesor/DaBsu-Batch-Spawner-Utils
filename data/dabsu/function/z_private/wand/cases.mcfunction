function dabsu:z_private_d/uid/get
execute unless data storage dabsu:user data[0].settings{disableBatchRightClick:true} if entity @e[type=marker,tag=dabsu.marker,distance=..0.1,scores={selected.dabsu=1..}] unless predicate dabsu:sneaking run return run function dabsu:z_private/wand/deselect
execute unless data storage dabsu:user data[0].settings{disableBatchRightClick:true} unless entity @s[tag=dabsu.quick_edit] if entity @e[type=marker,tag=dabsu.marker,distance=..0.1] unless predicate dabsu:sneaking run return run function dabsu:z_private/wand/select
execute if entity @e[type=marker,tag=dabsu.marker,distance=..0.1] if predicate dabsu:sneaking run return run function dabsu:z_priq/selected/call
execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"off"} run return run function dabsu:z_private_d/batch/home
execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"quick"} if entity @s[tag=!dabsu.quick_edit] run return run function dabsu:z_private_d/batch/home
