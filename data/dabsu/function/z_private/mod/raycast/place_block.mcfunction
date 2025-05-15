execute if block ^ ^ ^ spawner align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=dabsu.marker,distance=..0.1] run return run function dabsu:z_private/placed/located


execute unless entity @s[distance=..10] run return fail
execute positioned ^ ^ ^0.05 run return run function dabsu:z_private/mod/raycast/place_block