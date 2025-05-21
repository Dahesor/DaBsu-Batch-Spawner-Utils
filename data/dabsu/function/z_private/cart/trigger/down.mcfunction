data modify storage dabsu:run run set value {page:0}
scoreboard players operation #page calc.dabsu = @s calc.dabsu
scoreboard players add #page calc.dabsu 1
execute store result storage dabsu:run run.page int 1 run scoreboard players get #page calc.dabsu

execute if function dabsu:z_private/cart/data/check_exist run return run function dabsu:z_private/cart/trigger/normal_down

function dabsu:z_private/cart/data/to_page
execute unless data storage dabsu:save item[0].data[0] run return run function dabsu:z_private/cart/trigger/back_to_1


function dabsu:z_private/cart/data/find_max
data modify storage dabsu:save item append from storage dabsu:save item[0]
data remove storage dabsu:save item[0]



data modify storage dabsu:save item prepend value {id:-1,data:[]}
scoreboard players add @s calc.dabsu 1
execute store result storage dabsu:save item[0].id int 1 run scoreboard players get @s calc.dabsu
data modify entity @s Items set from storage dabsu:save item[0].data
function dabsu:z_private/cart/data/buttons