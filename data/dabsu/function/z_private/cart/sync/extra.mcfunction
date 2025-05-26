tag @s add dabsu.temp
data modify storage dabsu:save list set from entity @s Items
data remove storage dabsu:save list[{components:{"minecraft:custom_data":{dabsu:{cart:{}}}}}]
data remove storage dabsu:save list[{components:{custom_data:{dabsu:{cart:{}}}}}]