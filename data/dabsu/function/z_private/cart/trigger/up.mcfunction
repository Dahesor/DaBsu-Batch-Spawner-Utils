execute if data storage dabsu:save item[1] run function dabsu:z_private/cart/trigger/up_hol

data modify storage dabsu:save item prepend from storage dabsu:save item[-1]
data remove storage dabsu:save item[-1]

execute store result score @s calc.dabsu run data get storage dabsu:save item[0].id

data modify entity @s Items set from storage dabsu:save item[0].data
function dabsu:z_private/cart/data/buttons

