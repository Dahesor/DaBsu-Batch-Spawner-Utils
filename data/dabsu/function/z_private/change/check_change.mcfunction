execute if entity @s[tag=dabsu.wait_for_new] run function dabsu:z_private/change/update/swap_spawner
data modify storage dabsu:run spawner set from block ~ ~ ~

execute if data storage dabsu:run spawner.SpawnData.entity.id unless data storage dabsu:run spawner.SpawnPotentials[0] run return run function dabsu:z_private/change/use_spawn_data

data remove storage dabsu:run spawner.components
data remove storage dabsu:run spawner.id
data remove storage dabsu:run spawner.Delay
data remove storage dabsu:run spawner.SpawnData

execute if data storage dabsu:run spawner.SpawnPotentials[0] unless data storage dabsu:run spawner.SpawnPotentials[0].data.entity.id run data remove storage dabsu:run spawner.SpawnPotentials[0]

scoreboard players set $changed calc.dabsu 0
execute store result score $changed calc.dabsu run data modify storage dabsu:run spawner set from entity @s data.spawner
execute unless score $changed calc.dabsu matches 0 run function dabsu:z_private/change/update/data_changed