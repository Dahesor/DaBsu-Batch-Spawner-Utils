scoreboard players operation #input input.dabsu = @s input.dabsu
scoreboard players set @s input.dabsu 0

execute if score @s waiting.dabsu matches 1 run return run function dabsu:z_private_dialog/batch/recive/edit_delay_all