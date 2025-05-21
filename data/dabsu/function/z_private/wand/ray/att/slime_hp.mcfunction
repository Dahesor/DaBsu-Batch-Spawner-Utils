scoreboard players set #var calc.dabsu 1
execute if data storage dabsu:run element.data.entity.Size store result score #var calc.dabsu run data get storage dabsu:run element.data.entity.Size
execute if score #var calc.dabsu matches ..0 run scoreboard players set #var calc.dabsu 1
scoreboard players operation #var calc.dabsu *= #var calc.dabsu
execute store result storage dabsu:run num.hp int 1 run scoreboard players get #var calc.dabsu