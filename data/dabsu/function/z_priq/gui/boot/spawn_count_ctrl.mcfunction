execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnCount
scoreboard players operation #side calc.dabsu *= #50 calc.dabsu

data modify storage dabsu:run shape.this set value {scale:[0.3f,0.3f,0.3f],translation:[-0.15f,1.85f,-0.15f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}
execute summon block_display run function dabsu:z_priq/gui/boot/bar/ctrl_init