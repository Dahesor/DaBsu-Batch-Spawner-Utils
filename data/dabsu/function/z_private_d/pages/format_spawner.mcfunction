function dabsu:z_private/text/get
function dabsu:z_private_d/templates/obtain/formatted

function dabsu:z_private_d/uid/get
data modify storage dabsu:user data[0].Inv set value []
data modify storage dabsu:run run set from entity @s Inventory
data modify storage dabsu:run run append from entity @s EnderItems[]
data modify storage dabsu:run run prepend from entity @s equipment.mainhand
data modify storage dabsu:run run prepend from entity @s equipment.offhand
data modify storage dabsu:run run prepend from entity @s equipment.head
data modify storage dabsu:run run prepend from entity @s equipment.chest
data modify storage dabsu:run run prepend from entity @s equipment.legs
data modify storage dabsu:run run prepend from entity @s equipment.feet
data modify storage dabsu:run item_list set value []
data modify storage dabsu:run item_list append from storage dabsu:run run[{components:{"minecraft:block_entity_data":{id:"minecraft:mob_spawner"}}}]
data remove storage dabsu:run item_list[].Slot
data modify storage dabsu:run item_list[].count set value 1

scoreboard players set $this input.dabsu 100
execute if data storage dabsu:run item_list[0].id run function dabsu:z_private_d/pages/gen/new_spawner

execute unless data storage dabsu:run dialog.dialog.body[1] run data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.no_spawn_egg_item

scoreboard players set @s waiting.dabsu 7
scoreboard players enable @s input.dabsu

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog