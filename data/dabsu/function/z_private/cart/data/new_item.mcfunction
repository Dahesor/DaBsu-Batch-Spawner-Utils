data modify storage dabsu:save list set from entity @s Items
data remove storage dabsu:save list[{components:{"minecraft:custom_data":{dabsu:{cart:{}}}}}]
data remove storage dabsu:save list[{components:{custom_data:{dabsu:{cart:{}}}}}]

execute unless data storage dabsu:save list[0] run return fail

data modify storage dabsu:run run set value {slot:0b,page:0}
execute store result storage dabsu:run run.page int 1 run scoreboard players get @s calc.dabsu
data modify storage dabsu:run run.slot set from storage dabsu:save list[0].Slot
function dabsu:z_private/cart/data/__modify_item with storage dabsu:run run

data modify storage dabsu:save list set from entity @s Items
data remove storage dabsu:save list[{Slot:0b}]
data remove storage dabsu:save list[{Slot:9b}]
data remove storage dabsu:save list[{Slot:18b}]
function dabsu:z_private/cart/sync/push_new