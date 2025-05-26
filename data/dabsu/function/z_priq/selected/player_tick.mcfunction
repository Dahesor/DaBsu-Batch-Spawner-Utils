scoreboard players set #exist uid.dabsu 0
scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=marker,tag=dabsu.marker,tag=dabsu.quick_edit,distance=..100] run function dabsu:z_priq/selected/marker_recive
execute if score #exist uid.dabsu matches 1.. run return 1


# Spawner borken or not loaded
tag @s remove dabsu.quick_edit