summon item_display ~ ~ ~ {Tags:["dabsu.inv"],transformation:{scale:[0f,0f,0f],left_rotation:[0f,0f,0f,0f],right_rotation:[0f,0f,0f,0f],translation:[0f,0f,0f]}}

function dabsu:z_private/cart/player/copy_item

item modify entity @e[type=item_display,limit=1,distance=..1,tag=dabsu.inv] contents dabsu:cleanup_cart_item
data modify storage dabsu:save single set from entity @e[type=item_display,limit=1,distance=..1,tag=dabsu.inv] item
data remove storage dabsu:save single.components."minecraft:custom_data".dabsu.cart

execute store result score #custom calc.dabsu run data get storage dabsu:save single.components."minecraft:custom_data".dabsu
execute unless score #custom calc.dabsu matches 1.. run data remove storage dabsu:save single.components."minecraft:custom_data".dabsu


execute store result score #custom calc.dabsu run data get storage dabsu:save single.components."minecraft:custom_data"
execute unless score #custom calc.dabsu matches 1.. run data remove storage dabsu:save single.components."minecraft:custom_data"
data modify entity @e[type=item_display,limit=1,distance=..1,tag=dabsu.inv] item set from storage dabsu:save single

function dabsu:z_private/cart/player/copy_back
kill @e[type=item_display,tag=dabsu.inv]

execute at @s as @e[type=chest_minecart,tag=dabsu.inv,distance=..25] at @s run function dabsu:z_private/cart/data/reload