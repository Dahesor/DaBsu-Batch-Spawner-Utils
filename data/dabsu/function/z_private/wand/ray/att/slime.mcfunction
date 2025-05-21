scoreboard players set #var calc.dabsu 0
data modify storage dabsu:run att set value {armor:0d,damage:1d}
execute if data storage dabsu:run element.data.entity.Size store result score #var calc.dabsu run data get storage dabsu:run element.data.entity.Size
scoreboard players add #var calc.dabsu 1
execute store result storage dabsu:run att.damage double 1 run scoreboard players get #var calc.dabsu