execute unless score @s uid.dabsu matches 1.. run function dabsu:z_private/new_uid

execute unless score @s leave_game.dabsu matches ..0 run function dabsu:z_private/text/notice
execute if items entity @s container.* *[custom_data~{dabsu:{cart:{}}}] at @s run function dabsu:z_private/cart/player/check
execute if items entity @s player.cursor *[custom_data~{dabsu:{cart:{}}}] at @s run function dabsu:z_private/cart/player/check

execute if items entity @s weapon ghast_tear[custom_data~{dabsu:{is_wand:1b}}] at @s anchored eyes run return run function dabsu:z_private/wand/ray/start
execute if items entity @s weapon.offhand ghast_tear[custom_data~{dabsu:{is_wand:1b}}] at @s anchored eyes run return run function dabsu:z_private/wand/ray/start