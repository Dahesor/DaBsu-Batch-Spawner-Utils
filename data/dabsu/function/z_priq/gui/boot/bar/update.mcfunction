scoreboard players set #exist calc.dabsu 1

data modify storage dabsu:run nbt merge value {f:0.0f}
execute store result score #side calc.dabsu run data get storage dabsu:run spawner.SpawnCount
scoreboard players operation #side calc.dabsu *= #50 calc.dabsu
execute store result storage dabsu:run nbt.f float 0.01 run scoreboard players get #side calc.dabsu

data modify entity @s transformation.scale[1] set from storage dabsu:run nbt.f