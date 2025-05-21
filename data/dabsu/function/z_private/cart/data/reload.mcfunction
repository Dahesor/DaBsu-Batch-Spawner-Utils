data modify storage dabsu:save list set from entity @s Items
data remove storage dabsu:save list[{components:{"minecraft:custom_data":{dabsu:{cart:{}}}}}]
data remove storage dabsu:save list[{components:{custom_data:{dabsu:{cart:{}}}}}]

execute if data storage dabsu:save list[0] run function dabsu:z_private/cart/data/return_from_list

function dabsu:z_private/cart/data/to_page
data modify entity @s Items set value []
data modify entity @s Items set from storage dabsu:save item[0].data

function dabsu:z_private/cart/data/buttons