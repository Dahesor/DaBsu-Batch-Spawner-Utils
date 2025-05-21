execute if function dabsu:z_private/cart/data/check_exist run return run function dabsu:z_private/cart/data/to_page

function dabsu:z_private/cart/data/find_max
data modify storage dabsu:save item insert 1 value {id:-1,data:[]}
scoreboard players add #page calc.dabsu 1
execute store result storage dabsu:save item[1].id int 1 run scoreboard players get #page calc.dabsu
scoreboard players remove #page calc.dabsu 1
data modify storage dabsu:save item append from storage dabsu:save item[0]
data remove storage dabsu:save item[0]

