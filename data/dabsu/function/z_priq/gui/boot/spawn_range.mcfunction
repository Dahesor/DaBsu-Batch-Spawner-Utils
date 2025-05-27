data modify storage dabsu:run nbt merge value {f:0.0f,f2:0.0f}
execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnRange
scoreboard players operation #side calc.dabsu *= #100 calc.dabsu
scoreboard players add #side calc.dabsu 51
execute store result storage dabsu:run nbt.f float 0.01 run scoreboard players get #side calc.dabsu
scoreboard players add #side calc.dabsu 1
scoreboard players operation #side calc.dabsu *= #2 calc.dabsu
execute store result storage dabsu:run nbt.f2 float 0.01 run scoreboard players get #side calc.dabsu


##Y Axis
# Template
data modify storage dabsu:run shape.y set value {scale:[0.05,3.02,0.05],translation:[0.51,-1.51,0.51],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}
data modify storage dabsu:run shape.y.translation[0] set from storage dabsu:run nbt.f
data modify storage dabsu:run shape.y.translation[2] set from storage dabsu:run nbt.f
# Entry
scoreboard players set #x calc.dabsu 1
scoreboard players set #z calc.dabsu 1
execute summon block_display run function dabsu:z_priq/gui/boot/box/y
scoreboard players set #x calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/y
scoreboard players set #z calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/y
scoreboard players set #x calc.dabsu 1
execute summon block_display run function dabsu:z_priq/gui/boot/box/y

##X Axis
# Template
data modify storage dabsu:run shape.x set value {scale:[5.5f,0.05f,0.05f],translation:[1.0f,1.51f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}
data modify storage dabsu:run shape.x.scale[0] set from storage dabsu:run nbt.f2
data modify storage dabsu:run shape.x.translation[0] set from storage dabsu:run nbt.f
data modify storage dabsu:run shape.x.translation[2] set from storage dabsu:run nbt.f
execute store result storage dabsu:run shape.x.translation[0] float -0.01 run data get storage dabsu:run shape.x.translation[0] 100
# Entry
scoreboard players set #z calc.dabsu 1
scoreboard players set #y calc.dabsu 1
execute summon block_display run function dabsu:z_priq/gui/boot/box/x
scoreboard players set #y calc.dabsu 0
execute summon block_display run function dabsu:z_priq/gui/boot/box/x
scoreboard players set #y calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/x
scoreboard players set #z calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/x
scoreboard players set #y calc.dabsu 0
execute summon block_display run function dabsu:z_priq/gui/boot/box/x
scoreboard players set #y calc.dabsu 1
execute summon block_display run function dabsu:z_priq/gui/boot/box/x

##Z Axis
# Template
data modify storage dabsu:run shape.z set value {scale:[0.05f,0.05f,5.05f],translation:[1.0f,1.51f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}
data modify storage dabsu:run shape.z.scale[2] set from storage dabsu:run nbt.f2
data modify storage dabsu:run shape.z.translation[0] set from storage dabsu:run nbt.f
data modify storage dabsu:run shape.z.translation[2] set from storage dabsu:run nbt.f
execute store result storage dabsu:run shape.z.translation[2] float -0.01 run data get storage dabsu:run shape.x.translation[2] 100
# Entry
scoreboard players set #x calc.dabsu 1
scoreboard players set #y calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/z
scoreboard players set #y calc.dabsu 0
execute summon block_display run function dabsu:z_priq/gui/boot/box/z
scoreboard players set #y calc.dabsu 1
execute summon block_display run function dabsu:z_priq/gui/boot/box/z
scoreboard players set #x calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/z
scoreboard players set #y calc.dabsu 0
execute summon block_display run function dabsu:z_priq/gui/boot/box/z
scoreboard players set #y calc.dabsu -1
execute summon block_display run function dabsu:z_priq/gui/boot/box/z