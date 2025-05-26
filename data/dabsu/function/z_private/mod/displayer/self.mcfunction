scoreboard players remove @s highlight.dabsu 1
execute if score @s highlight.dabsu matches ..0 if entity @s[tag=dabsu.quick_edit] run return run function dabsu:z_private/mod/displayer/quick_edit
execute if score @s highlight.dabsu matches ..0 run tp @s ~ -3000 ~
execute if score @s highlight.dabsu matches ..0 run kill