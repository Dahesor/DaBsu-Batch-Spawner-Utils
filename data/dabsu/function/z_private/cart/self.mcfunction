execute store result score #sur calc.dabsu if entity @e[type=chest_minecart,tag=dabsu.inv,distance=..6]
execute unless score #sur calc.dabsu matches ..1 run return run function dabsu:z_private/cart/destruct

execute unless entity @a[distance=..25] run return run function dabsu:z_private/cart/destruct

execute unless score @s highlight.dabsu = $gametime calc.dabsu run return run function dabsu:z_private/cart/destruct
scoreboard players add @s highlight.dabsu 1

data modify entity @s Motion set value [0d,0d,0d]

execute if items entity @s container.* *[!custom_data~{dabsu:{cart:{}}}] run function dabsu:z_private/cart/data/new_item