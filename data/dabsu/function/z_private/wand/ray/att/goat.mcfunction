execute unless data storage dabsu:run element.data.entity.Age run return run data modify storage dabsu:run att set value {armor:0d,damage:2d}
execute store result score #var calc.dabsu run data get storage dabsu:run element.data.entity.Age
execute if score #var calc.dabsu matches 0.. run data modify storage dabsu:run att set value {armor:0d,damage:2d}
data modify storage dabsu:run att set value {armor:0d,damage:1d}