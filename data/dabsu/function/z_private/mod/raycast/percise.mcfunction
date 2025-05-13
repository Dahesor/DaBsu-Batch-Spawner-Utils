execute if block ~ ~ ~ spawner run return run function dabsu:z_private/mod/raycast/specialize
execute unless entity @s[distance=..10] run return fail
#particle dust{color:[1,1,1],scale:0.05} ~ ~ ~ 0 0 0 0 0 force
execute positioned ^ ^ ^0.05 run function dabsu:z_private/mod/raycast/percise