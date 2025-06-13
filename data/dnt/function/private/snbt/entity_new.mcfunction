loot spawn ~ ~ ~ loot dnt:get_snbt
kill
execute as @n[type=item,distance=..10,nbt={Item:{components:{"minecraft:custom_data":{dnt:{snbt:1b}}}}}] run return run function dnt:private/snbt/item
data modify storage dnt:ram out set value "DNT ERROR: ITEM LOST"
return 0