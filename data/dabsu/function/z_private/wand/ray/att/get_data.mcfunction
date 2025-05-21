data modify storage dabsu:run num set value {amt_f:0,amt_i:0,arm_f:0,arm_i:0,dam_f:0,dam_i:0}
data modify storage dabsu:run att set value {armor:0.0d,damage:0.0d,toughness:0.0d}


execute store result storage dabsu:run att.armor double 1 run attribute @s minecraft:armor get
execute store result storage dabsu:run att.damage double 1 run attribute @s minecraft:attack_damage get
execute store result storage dabsu:run att.toughness double 1 run attribute @s minecraft:armor_toughness get
#tellraw @a {nbt:"att",storage:"dabsu:run"}

execute store result score #var calc.dabsu run data get storage dabsu:run att.damage 10
execute store result storage dabsu:run num.dam_i int 0.1 run scoreboard players get #var calc.dabsu
scoreboard players operation #var calc.dabsu %= #10 calc.dabsu
execute store result storage dabsu:run num.dam_f int 1 run scoreboard players get #var calc.dabsu

execute store result score #var calc.dabsu run data get storage dabsu:run att.armor 10
execute store result storage dabsu:run num.arm_i int 0.1 run scoreboard players get #var calc.dabsu
scoreboard players operation #var calc.dabsu %= #10 calc.dabsu
execute store result storage dabsu:run num.arm_f int 1 run scoreboard players get #var calc.dabsu

execute store result score #var calc.dabsu run data get storage dabsu:run att.toughness 10
execute store result storage dabsu:run num.amt_i int 0.1 run scoreboard players get #var calc.dabsu
scoreboard players operation #var calc.dabsu %= #10 calc.dabsu
execute store result storage dabsu:run num.amt_f int 1 run scoreboard players get #var calc.dabsu

tp @s ~ -99999 ~
kill