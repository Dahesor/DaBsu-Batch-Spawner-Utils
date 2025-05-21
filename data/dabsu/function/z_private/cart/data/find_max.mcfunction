execute unless data storage dabsu:save item[1].id run return 1

execute store result score #page calc.dabsu run data get storage dabsu:save item[0].id
execute store result score #page2 calc.dabsu run data get storage dabsu:save item[1].id
execute if score #page calc.dabsu > #page2 calc.dabsu run return 1

data modify storage dabsu:save item prepend from storage dabsu:save item[-1]
data remove storage dabsu:save item[-1]
function dabsu:z_private/cart/data/find_max