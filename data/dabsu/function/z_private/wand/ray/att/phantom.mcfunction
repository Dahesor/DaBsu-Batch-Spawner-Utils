scoreboard players set #var calc.dabsu 0
data modify storage dabsu:run att set value {armor:0d,damage:2d}
execute if data storage dabsu:run element.data.entity.size store result score #var calc.dabsu run data get storage dabsu:run element.data.entity.size
execute if score #var calc.dabsu matches ..0 run return 1
scoreboard players add #var calc.dabsu 6
execute store result storage dabsu:run att.damage double 1 run scoreboard players get #var calc.dabsu