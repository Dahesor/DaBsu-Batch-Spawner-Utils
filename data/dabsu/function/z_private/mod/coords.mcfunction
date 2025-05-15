execute store result score #x calc.dabsu run data get entity @s Pos[0] 1
execute store result score #y calc.dabsu run data get entity @s Pos[1] 1
execute store result score #z calc.dabsu run data get entity @s Pos[2] 1
scoreboard players operation #cx calc.dabsu = #x calc.dabsu
scoreboard players operation #cx calc.dabsu /= #16 calc.dabsu
scoreboard players operation #cz calc.dabsu = #z calc.dabsu
scoreboard players operation #cz calc.dabsu /= #16 calc.dabsu