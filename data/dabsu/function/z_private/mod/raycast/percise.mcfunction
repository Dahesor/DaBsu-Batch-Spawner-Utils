execute if block ^ ^ ^ trial_spawner if predicate dabsu:sneaking align xyz positioned ~0.5 ~0.5 ~0.5 run return run function dabsu:z_priq/gui/trial/check_locked
execute if block ^ ^ ^ spawner run return run function dabsu:z_private/mod/raycast/specialize

execute unless entity @s[distance=..25] run return run function dabsu:z_private/mod/raycast/no_hit

execute positioned ^ ^ ^0.04 run return run function dabsu:z_private/mod/raycast/percise