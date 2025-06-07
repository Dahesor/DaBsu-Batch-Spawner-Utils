#Grant UID
execute unless score @s uid.dabsu matches 1.. run function dabsu:z_private/new_uid

#Reset Offhand Trigger
tag @s remove dabsu.used_wand

#Quick Edit
scoreboard players remove @s[scores={ctrl_wait.dabsu=1..}] ctrl_wait.dabsu 1
execute if entity @s[tag=dabsu.quick_edit] run function dabsu:z_priq/selected/player_tick
execute if score @s ctrl.dabsu matches 1.. unless score @s ctrl_wait.dabsu matches 1.. run function dabsu:z_priq/gui/player/stop

#Dialog Input
scoreboard players enable @s trigger.dabsu
scoreboard players enable @s register_range.dabsu
scoreboard players enable @s lang.dabsu
execute if score @s trigger.dabsu matches 1.. at @s run function dabsu:z_private_d/trigger
execute if score @s input.dabsu matches -2147483648..2147483647 unless score @s input.dabsu matches 0 run function dabsu:z_private_d/input
execute if score @s opcd.dabsu matches 1.. run scoreboard players remove @s opcd.dabsu 1

#Leave Game
execute unless score @s leave_game.dabsu matches ..0 run function dabsu:z_private/text/notice

#Ender Chest
execute if items entity @s container.* *[custom_data~{dabsu:{cart:{}}}] at @s run function dabsu:z_private/cart/player/check
execute if items entity @s player.cursor *[custom_data~{dabsu:{cart:{}}}] at @s run function dabsu:z_private/cart/player/check

#Drop Wand
execute if score @s dropWand.dabsu matches 1.. run function dabsu:z_private/wand/dropped/find






# Passive Raycast | /return Below
execute if items entity @s weapon ghast_tear[custom_data~{dabsu:{is_wand:1b}}] at @s anchored eyes run return run function dabsu:z_private/wand/register/init
execute if items entity @s weapon.offhand ghast_tear[custom_data~{dabsu:{is_wand:1b}}] at @s anchored eyes run return run function dabsu:z_private/wand/register/init