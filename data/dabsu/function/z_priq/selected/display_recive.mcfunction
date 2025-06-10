execute unless score @s uid.dabsu = #this uid.dabsu run return fail
scoreboard players set @s highlight.dabsu 3
execute if score #loop_20 calc.dabsu matches 3 if entity @s[type=area_effect_cloud] run data modify entity @s Age set value 1