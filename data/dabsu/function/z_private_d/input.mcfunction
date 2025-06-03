scoreboard players operation #input input.dabsu = @s input.dabsu
scoreboard players reset @s input.dabsu

execute if score @s waiting.dabsu matches 1 run return run function dabsu:z_private_d/batch/recive/edit_delay_all
execute if score @s waiting.dabsu matches 2 run return run function dabsu:z_private_d/batch/dispatch/pot_selected
execute if score @s waiting.dabsu matches 4 run return run function dabsu:z_private_d/batch/recive/scan_input
execute if score @s waiting.dabsu matches 5 run return run function dabsu:z_private_d/batch/recive/global_options
execute if score @s waiting.dabsu matches 6 run return run function dabsu:z_private_d/lines/cmd/spawn_egg

execute if score @s waiting.dabsu matches 10..20 run return run function dabsu:z_priq/inputs