#tellraw @a [{score:{name:"#step_x",objective:"calc.dabsu"}}]

data modify storage dabsu:run data set from entity @s data
execute store result score #current calc.dabsu run data get storage dabsu:run data.spawner.SpawnCount
execute if score #current calc.dabsu = #step_x calc.dabsu run return fail

execute store result entity @s data.spawner.SpawnCount short 1 run scoreboard players get #step_x calc.dabsu
execute store result block ~ ~ ~ SpawnCount short 1 run scoreboard players get #step_x calc.dabsu

scoreboard players set #reboot_ctrl calc.dabsu 1
function dabsu:z_priq/gui/reboot
scoreboard players reset #reboot_ctrl calc.dabsu
execute as @a if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/gui/sound/count