scoreboard players set #current calc.dabsu 14
execute if data block ~ ~ ~ required_player_range store result score #current calc.dabsu run data get block ~ ~ ~ required_player_range
execute if score #current calc.dabsu = #step_x calc.dabsu run return fail

data modify block ~ ~ ~ required_player_range set value 1
execute store result block ~ ~ ~ required_player_range int 1 run scoreboard players get #step_x calc.dabsu

scoreboard players set #reboot_ctrl calc.dabsu 1
function dabsu:z_priq/gui/reboot
scoreboard players reset #reboot_ctrl calc.dabsu
execute as @a if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/gui/sound/p_scale