execute if data storage dabsu:run element.data.entity{IsBaby:1b} run return run data modify storage dabsu:run att set value {armor:0d,damage:0.5d}
execute if data storage dabsu:run element.data.entity{IsBaby:0b} run return run data modify storage dabsu:run att set value {armor:0d,damage:6d}

execute if data storage dabsu:run element.data.entity.Age store result score #var calc.dabsu run data get storage dabsu:run element.data.entity.Age
execute if data storage dabsu:run element.data.entity.Age unless score #var calc.dabsu matches 0.. run return run data modify storage dabsu:run att set value {armor:0d,damage:0.5d}

data modify storage dabsu:run att set value {armor:0d,damage:6d}