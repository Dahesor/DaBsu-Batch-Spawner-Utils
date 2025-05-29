attribute @s scale base set 0.0625
scoreboard players operation @s uid.dabsu = #this uid.dabsu
data modify storage dabsu:run num set value {amt_f:0,amt_i:0,arm_f:0,arm_i:0,dam_f:0,dam_i:0}


data modify entity @s attributes[{id:"minecraft:armor"}].base set from storage dabsu:run att.armor
data modify entity @s attributes[{id:"minecraft:attack_damage"}].base set from storage dabsu:run att.damage



data modify entity @s equipment set from storage dabsu:run element.data.entity.equipment

tag @s remove dabsu.temp
scoreboard players set @s highlight.dabsu 2