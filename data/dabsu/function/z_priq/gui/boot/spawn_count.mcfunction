data modify storage dabsu:run nbt merge value {f:0.0f}
execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnCount
scoreboard players operation #side calc.dabsu *= #50 calc.dabsu
execute store result storage dabsu:run nbt.f float 0.01 run scoreboard players get #side calc.dabsu

data modify storage dabsu:run shape.this set value {scale:[0.25,1.25,0.25],translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}
data modify storage dabsu:run shape.this.scale[1] set from storage dabsu:run nbt.f
execute summon block_display run function dabsu:z_priq/gui/boot/bar/init