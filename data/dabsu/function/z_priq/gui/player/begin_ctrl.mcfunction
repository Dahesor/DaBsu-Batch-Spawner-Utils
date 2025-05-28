scoreboard players operation @s ctrl.dabsu = #case calc.dabsu

execute if score @s ctrl.dabsu matches 1 run function dabsu:z_priq/gui/player/begin/s_range
execute if score @s ctrl.dabsu matches 2 run function dabsu:z_priq/gui/player/begin/p_range
execute if score @s ctrl.dabsu matches 3 run function dabsu:z_priq/gui/player/begin/count

return 1