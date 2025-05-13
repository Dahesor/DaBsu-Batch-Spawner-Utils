execute positioned ~-0.1 ~-0.1 ~-0.1 if entity @n[type=#dabsu:allow_spawner,dx=0.2,dy=0.2,dz=0.2] as @n[type=#dabsu:allow_spawner,dx=0.2,dy=0.2,dz=0.2] at @s run return run function dabsu:z_private/new/read_self
execute unless entity @s[distance=..12] run return fail
execute positioned ^ ^ ^0.1 run return run function dabsu:z_private/new/get_looking_entity