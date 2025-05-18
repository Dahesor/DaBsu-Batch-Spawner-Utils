execute unless score #loaded calc.dabsu matches 1.. run return fail

execute as @a unless score @s leave_game.dabsu matches ..0 run function dabsu:z_private/text/notice

scoreboard players add #loop_20 calc.dabsu 1
execute if score #loop_20 calc.dabsu matches 20.. run scoreboard players set #loop_20 calc.dabsu 0
scoreboard players add #loop_10 calc.dabsu 1
execute if score #loop_10 calc.dabsu matches 10.. run scoreboard players set #loop_10 calc.dabsu 0
scoreboard players add #loop_5 calc.dabsu 1
execute if score #loop_5 calc.dabsu matches 5.. run scoreboard players set #loop_5 calc.dabsu 0

execute store result score $gametime calc.dabsu run time query gametime


execute if score $selecting calc.dabsu matches 1 run function dabsu:z_private/mod/buffer_select/ticker
execute if score %modifying calc.dabsu matches 1.. unless score %modify_loading calc.dabsu matches 1.. run function dabsu:z_private/execute/ticker
execute if score %modify_loading calc.dabsu matches 1.. run scoreboard players remove %modify_loading calc.dabsu 1

execute if score #loop_20 calc.dabsu matches 3 run function dabsu:z_private/second
execute if score #loop_5 calc.dabsu matches 1 as @e[type=block_display,tag=dabsu.displayer] run function dabsu:z_private/mod/displayer/self
execute if score #loop_10 calc.dabsu matches 6 at @a run function dabsu:z_private/broke/player_range