data modify storage dabsu:run spawner set from block ~ ~ ~
data remove storage dabsu:run spawner.components
data remove storage dabsu:run spawner.id
data remove storage dabsu:run spawner.Delay
data remove storage dabsu:run spawner.SpawnData
data modify entity @s data.spawner set from storage dabsu:run spawner

execute if entity @s[tag=dabsu.quick_edit] run function dabsu:z_priq/gui/reboot