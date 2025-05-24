#Grant UID
execute unless score @s uid.dabsu matches 1.. run function dabsu:z_private/new_uid

#Dialog Input
scoreboard players enable @s trigger.dabsu
scoreboard players enable @s register_range.dabsu
scoreboard players enable @s lang.dabsu
execute if score @s trigger.dabsu matches 1.. run function dabsu:z_private_d/trigger
execute if score @s input.dabsu matches -2147483648..2147483647 unless score @s input.dabsu matches 0 run function dabsu:z_private_d/input

#Leave Game
execute unless score @s leave_game.dabsu matches ..0 run function dabsu:z_private/text/notice

#Ender Chest
execute if items entity @s container.* *[custom_data~{dabsu:{cart:{}}}] at @s run function dabsu:z_private/cart/player/check
execute if items entity @s player.cursor *[custom_data~{dabsu:{cart:{}}}] at @s run function dabsu:z_private/cart/player/check

#Drop Wand
execute if score @s dropWand.dabsu matches 1.. run function dabsu:z_private/wand/dropped/find






# Returns Below
execute if items entity @s weapon ghast_tear[custom_data~{dabsu:{is_wand:1b}}] at @s anchored eyes run return run function dabsu:z_private/wand/register/init
execute if items entity @s weapon.offhand ghast_tear[custom_data~{dabsu:{is_wand:1b}}] at @s anchored eyes run return run function dabsu:z_private/wand/register/init