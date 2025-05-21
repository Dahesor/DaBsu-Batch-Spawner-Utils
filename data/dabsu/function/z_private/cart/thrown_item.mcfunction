execute if entity @s[tag=dabsu.kill] run return fail

data modify storage dabsu:save single set from entity @s Item

execute if data storage dabsu:save single{components:{"minecraft:custom_data":{dabsu:{cart:{button:{}}}}}} run tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dabsu:{cart:{}}}}}},distance=..3] add dabsu.kill
execute if data storage dabsu:save single{components:{"minecraft:custom_data":{dabsu:{cart:{button:{}}}}}} run return run kill @e[type=item,tag=dabsu.kill,distance=..3]
execute if data storage dabsu:save single{components:{"minecraft:custom_data":{dabsu:{cart:{stored:{}}}}}} if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{dabsu:{cart:{button:{}}}}}}},distance=..3] run return run kill

data modify storage dabsu:save single set from entity @s Item
execute store result score @s calc.dabsu run data get entity @s Item.components."minecraft:custom_data".dabsu.cart.stored.page
function dabsu:z_private/cart/data/to_page

function dabsu:z_private/cart/data/__remove_this with entity @s Item.components."minecraft:custom_data".dabsu.cart.stored

scoreboard players operation #this calc.dabsu = @s calc.dabsu
execute as @e[type=chest_minecart] if score @s calc.dabsu = #this calc.dabsu run function dabsu:z_private/cart/sync/download

kill