
execute if block ~ ~-0.2 ~ #dabsu:ray_through positioned ~ ~-1 ~ run return run function dabsu:z_priq/analysis/drops
execute align xyz unless entity @e[type=block_display,tag=dabsu.analyz_marker,distance=..0.1] align xyz summon block_display run return run function dabsu:z_priq/analysis/new_marker
execute align xyz as @e[type=block_display,tag=dabsu.analyz_marker,distance=..0.1] run return run function dabsu:z_priq/analysis/update_marker