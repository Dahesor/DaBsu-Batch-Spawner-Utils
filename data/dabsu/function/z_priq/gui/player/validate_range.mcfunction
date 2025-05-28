execute unless score @s uid.dabsu = #this uid.dabsu run return fail

execute if entity @s[tag=dabsu.ctrl.range] run return run function dabsu:z_priq/gui/util/range_select
execute if entity @s[tag=dabsu.ctrl.p_range] run return run function dabsu:z_priq/gui/util/p_range_select
execute if entity @s[tag=dabsu.ctrl.count] run return run function dabsu:z_priq/gui/util/count_select

return 1