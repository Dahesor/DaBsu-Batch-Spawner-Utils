execute unless data storage dabsu:save item[1] run return fail
scoreboard players set #s_count calc.dabsu 0
execute as @e[type=chest_minecart,tag=dabsu.inv] if score @s calc.dabsu = #this calc.dabsu run scoreboard players add #s_count calc.dabsu 1
execute if score #s_count calc.dabsu matches 2.. run return fail

execute unless data storage dabsu:save item[0].data[0] unless data storage dabsu:save item[-1].data[0] run data remove storage dabsu:save item[0]