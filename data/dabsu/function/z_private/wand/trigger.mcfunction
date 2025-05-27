advancement revoke @s only dabsu:use_wand
scoreboard players set @s ctrl_wait.dabsu 6

execute if score @s ctrl.dabsu matches 1.. run return 1

scoreboard players set $ray calc.dabsu 2
execute anchored eyes run function dabsu:z_private/mod/raycast/percise