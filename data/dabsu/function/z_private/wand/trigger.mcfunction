advancement revoke @s only dabsu:use_wand
execute if data storage dabsu:sys {hibernate:true} run return fail

scoreboard players set @s ctrl_wait.dabsu 6

execute if score @s ctrl.dabsu matches 1.. run return 1

scoreboard players set $ray calc.dabsu 2
execute if entity @s[tag=dabsu.fast_cuboid] anchored eyes run return run function dabsu:select/cuboid/raycast
execute anchored eyes run function dabsu:z_private/mod/raycast/percise