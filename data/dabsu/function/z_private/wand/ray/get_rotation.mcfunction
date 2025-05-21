execute store result score #x calc.dabsu run data get entity @s Rotation[0]
execute store result score #y calc.dabsu run data get entity @s Rotation[1]

execute if score #x calc.dabsu matches ..-135 run scoreboard players set #rotation calc.dabsu 0
execute if score #x calc.dabsu matches 135.. run scoreboard players set #rotation calc.dabsu 0

execute if score #x calc.dabsu matches 45..135 run scoreboard players set #rotation calc.dabsu 1
execute if score #x calc.dabsu matches -45..45 run scoreboard players set #rotation calc.dabsu 2
execute if score #x calc.dabsu matches -135..-45 run scoreboard players set #rotation calc.dabsu 3

execute if score #y calc.dabsu matches -60..60 run return 1
execute if score #y calc.dabsu matches ..-60 run return run scoreboard players add #rotation calc.dabsu 10
execute if score #y calc.dabsu matches 60.. run return run scoreboard players add #rotation calc.dabsu 20