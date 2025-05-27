execute unless score @s uid.dabsu = #this uid.dabsu run return fail

execute if entity @s[tag=dabsu.ctrl.range] run function dabsu:z_priq/gui/util/range_select

return 1