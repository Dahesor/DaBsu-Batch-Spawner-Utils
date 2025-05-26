data modify block ~ ~ ~ {} merge from entity @s data.spawner
data modify block ~ ~ ~ SpawnPotentials set from entity @s data.spawner.SpawnPotentials
data modify block ~ ~ ~ SpawnData set from entity @s data.spawner.SpawnPotentials[0]

tag @s remove dabsu.analyzing
scoreboard players reset @s trigger.dabsu