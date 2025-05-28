scoreboard players set #has_qEdit calc.dabsu 1
scoreboard players set #exist uid.dabsu 0
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=marker,tag=dabsu.marker,tag=dabsu.quick_edit,distance=..150] run function dabsu:z_priq/selected/marker_recive
execute as @e[type=#dabsu:quick_display,tag=dabsu.displayer,tag=dabsu.gui_edit] run function dabsu:z_priq/selected/display_recive
execute if score #exist uid.dabsu matches 1.. run return run function dabsu:z_priq/gui/player/master

# Spawner borken or not loaded
tag @s remove dabsu.quick_edit