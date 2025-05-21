data modify storage dabsu:save list set value []
execute if items entity @s container.* *[!custom_data~{dabsu:{cart:{}}}] run function dabsu:z_private/cart/sync/extra

data modify entity @s Items set from storage dabsu:save item[0].data

function dabsu:z_private/cart/data/buttons

execute if entity @s[tag=dabsu.temp] run function dabsu:z_private/cart/sync/place_item
execute if data storage dabsu:save list[0] at @s run function dabsu:z_private/cart/data/return_from_list
tag @s remove dabsu.temp