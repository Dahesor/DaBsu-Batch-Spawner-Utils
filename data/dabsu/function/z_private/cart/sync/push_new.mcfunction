data modify storage dabsu:run run set value {page:0}
execute store result storage dabsu:run run.page int 1 run scoreboard players get @s calc.dabsu
function dabsu:z_private/cart/data/find_or_new

data modify storage dabsu:save item[0].data set from storage dabsu:save list


scoreboard players operation #this calc.dabsu = @s calc.dabsu
execute as @e[type=chest_minecart] if score @s calc.dabsu = #this calc.dabsu run function dabsu:z_private/cart/sync/download