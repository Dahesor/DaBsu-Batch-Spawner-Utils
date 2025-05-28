execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit,tag=dabsu.gui_edit.sr] if score @s uid.dabsu = #this uid.dabsu run kill

execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnRange
execute if score #side calc.dabsu matches 0..64 run function dabsu:z_priq/gui/boot/spawn_range
execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnRange
execute if score #side calc.dabsu matches 0..64 positioned ~-0.15 ~-1.85 ~-0.15 run function dabsu:z_priq/gui/boot/spawn_range_ctrl