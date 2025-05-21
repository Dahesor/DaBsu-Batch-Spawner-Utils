data modify storage dabsu:save list set from entity @s Items
execute unless data storage dabsu:save list[{Slot:0b,components:{"minecraft:custom_data":{dabsu:{cart:{button:{}}}}}}] run return run function dabsu:z_private/cart/trigger/up
execute unless data storage dabsu:save list[{Slot:9b,components:{"minecraft:custom_data":{dabsu:{cart:{button:{}}}}}}] run return run function dabsu:z_private/cart/trigger/close
execute unless data storage dabsu:save list[{Slot:18b,components:{"minecraft:custom_data":{dabsu:{cart:{button:{}}}}}}] run return run function dabsu:z_private/cart/trigger/down