execute store result score #page calc.dabsu run data get storage dabsu:save item[0].id
execute if score #page calc.dabsu = @s calc.dabsu run return 1
data modify storage dabsu:save item prepend from storage dabsu:save item[-1]
data remove storage dabsu:save item[-1]
function dabsu:z_private/cart/data/to_page