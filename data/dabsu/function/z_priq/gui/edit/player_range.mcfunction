#tellraw @a [{score:{name:"#step_x",objective:"calc.dabsu"}}]

execute if score #step_x calc.dabsu matches ..0 run scoreboard players set #step_x calc.dabsu 1
execute if score #step_x calc.dabsu matches 96.. run scoreboard players set #step_x calc.dabsu 96

execute if entity @s[tag=dabsu.trial_marker] run return run function dabsu:z_priq/gui/trial/update

data modify storage dabsu:run data set from entity @s data
execute store result score #current calc.dabsu run data get storage dabsu:run data.spawner.RequiredPlayerRange
execute if score #current calc.dabsu = #step_x calc.dabsu run return fail

execute store result entity @s data.spawner.RequiredPlayerRange short 1 run scoreboard players get #step_x calc.dabsu
execute store result block ~ ~ ~ RequiredPlayerRange short 1 run scoreboard players get #step_x calc.dabsu

scoreboard players set #reboot_ctrl calc.dabsu 1
function dabsu:z_priq/gui/reboot
scoreboard players reset #reboot_ctrl calc.dabsu
execute as @a if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/gui/sound/p_scale