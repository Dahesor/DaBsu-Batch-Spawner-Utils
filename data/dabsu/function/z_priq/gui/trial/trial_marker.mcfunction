tag @s add dabsu.marker
tag @s add dabsu.trial_marker
tag @s add dabsu.quick_edit

scoreboard players operation @s uid.dabsu = #this uid.dabsu
data modify storage dabsu:run data set value {pos:{x:0,y:0,z:0}}
execute store result score #x calc.dabsu run data get entity @s Pos[0] 1
execute store result score #y calc.dabsu run data get entity @s Pos[1] 1
execute store result score #z calc.dabsu run data get entity @s Pos[2] 1
execute store result storage dabsu:run data.pos.x int 1 run scoreboard players get #x calc.dabsu
execute store result storage dabsu:run data.pos.y int 1 run scoreboard players get #y calc.dabsu
execute store result storage dabsu:run data.pos.z int 1 run scoreboard players get #z calc.dabsu

data modify storage dabsu:run data.UUID set from entity @s UUID

execute if data storage dabsu:user data[0].settings{disableDisplayTiles:true} run return fail
data modify storage dabsu:run spawner set value {RequiredPlayerRange:14}
data modify storage dabsu:run spawner.RequiredPlayerRange set from block ~ ~ ~ required_player_range
function dabsu:z_priq/gui/boot/reboot/player_range
execute as @e[type=#dabsu:quick_display,tag=dabsu.displayer,tag=dabsu.gui_edit,tag=dabsu.temp] run function dabsu:z_priq/gui/boot/init