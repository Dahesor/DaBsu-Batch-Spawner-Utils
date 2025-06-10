data modify storage dabsu:run nbt merge value {f:0.0f}
execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnRange
scoreboard players operation #side calc.dabsu *= #100 calc.dabsu
scoreboard players add #side calc.dabsu 50

data modify storage dabsu:run shape.this set value {scale:[0.3,0.3,0.3],translation:[0f,0f,0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}

scoreboard players set #x calc.dabsu 1
scoreboard players set #z calc.dabsu 1
execute summon block_display run function dabsu:z_priq/gui/boot/box/ctrl
scoreboard players set #z calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/ctrl
scoreboard players set #x calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/ctrl
scoreboard players set #z calc.dabsu 1
execute summon block_display run function dabsu:z_priq/gui/boot/box/ctrl