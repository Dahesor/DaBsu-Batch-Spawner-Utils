execute unless score $ray calc.dabsu matches 2 run return fail
function dabsu:z_private_d/uid/get
execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"off"} run return run tag @s add dabsu.home
execute if data storage dabsu:user data[0].settings{requireShiftForMenu:"quick"} if entity @s[tag=!dabsu.quick_edit] run return run tag @s add dabsu.home
execute if predicate dabsu:sneaking run return run function dabsu:z_private_d/batch/home