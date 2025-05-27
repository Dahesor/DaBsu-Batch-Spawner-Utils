data modify storage dabsu:run spawner set from block ~ ~ ~
execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnRange
execute if score #side calc.dabsu matches 0..64 run function dabsu:z_priq/gui/boot/spawn_range
execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnRange
execute if score #side calc.dabsu matches 0..64 positioned ~-0.15 ~-1.85 ~-0.15 run function dabsu:z_priq/gui/boot/spawn_range_ctrl
function dabsu:z_priq/gui/boot/player_range

execute as @e[type=#dabsu:quick_display,tag=dabsu.displayer,tag=dabsu.gui_edit,tag=dabsu.temp] run function dabsu:z_priq/gui/boot/init