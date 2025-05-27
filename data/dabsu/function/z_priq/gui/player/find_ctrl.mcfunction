execute positioned ~-0.15 ~-1.85 ~-0.15 if entity @e[type=#dabsu:quick_display,distance=..0.45,tag=dabsu.gui_edit,tag=dabsu.ctrl.range] if function dabsu:z_priq/gui/player/ctrl_found run return 1
execute unless entity @s[distance=..30] run return fail
execute positioned ^ ^ ^0.1 run function dabsu:z_priq/gui/player/find_ctrl