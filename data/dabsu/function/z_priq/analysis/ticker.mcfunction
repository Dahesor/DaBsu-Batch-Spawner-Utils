execute as @e[tag=dabsu.analyzer] at @s align xyz run function dabsu:z_priq/analysis/new_spawn
execute as @e[type=block_display,tag=dabsu.analyz_marker] run function dabsu:z_priq/analysis/change_display

execute as @e[type=marker,tag=dabsu.marker,scores={trigger.dabsu=1..}] at @s run function dabsu:z_priq/analysis/marker
execute unless entity @e[type=marker,tag=dabsu.marker,scores={trigger.dabsu=1..}] run return run function dabsu:z_priq/analysis/shut