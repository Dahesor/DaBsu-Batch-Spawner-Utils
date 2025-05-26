execute unless score #loaded calc.dabsu matches 1.. run return fail
execute store result score $gametime calc.dabsu run time query gametime

execute as @a at @s run function dabsu:z_private/player
execute as @e[type=item] if items entity @s contents *[custom_data~{dabsu:{cart:{}}}] at @s align xyz run function dabsu:z_private/cart/thrown_item

# Spawner Analyzer
execute if score !sanalyze calc.dabsu matches 1.. run function dabsu:z_priq/analysis/ticker

#Ender Chest
execute as @e[type=chest_minecart,tag=dabsu.inv] at @s run function dabsu:z_private/cart/self

#loops
scoreboard players add #loop_20 calc.dabsu 1
execute if score #loop_20 calc.dabsu matches 20.. run scoreboard players set #loop_20 calc.dabsu 0
scoreboard players add #loop_10 calc.dabsu 1
execute if score #loop_10 calc.dabsu matches 10.. run scoreboard players set #loop_10 calc.dabsu 0
scoreboard players add #loop_5 calc.dabsu 1
execute if score #loop_5 calc.dabsu matches 5.. run scoreboard players set #loop_5 calc.dabsu 0

#Processes
function dabsu:z_private/mod/task_manager/ticker

execute if score #loop_20 calc.dabsu matches 3 run function dabsu:z_private/second
execute if score #loop_5 calc.dabsu matches 1 as @e[type=#dabsu:display,tag=dabsu.displayer] run function dabsu:z_private/mod/displayer/self

#Marker Tick
execute as @e[type=marker,tag=dabsu.marker] at @s run function dabsu:z_private/marker