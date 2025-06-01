data modify storage dabsu:run spawner set from block ~ ~ ~
function dabsu:z_priq/menu/gen/__get_ele with storage dabsu:user data[0].editing

data modify storage dabsu:run equipment set value {}
data modify storage dabsu:run equipment set from storage dabsu:run element.data.entity.equipment
execute if score #trigger trigger.dabsu matches 121 run data modify storage dabsu:run equipment.mainhand set from storage dabsu:run equipment.offhand
execute if score #trigger trigger.dabsu matches 122 run data modify storage dabsu:run equipment.mainhand set from storage dabsu:run equipment.head
execute if score #trigger trigger.dabsu matches 123 run data modify storage dabsu:run equipment.mainhand set from storage dabsu:run equipment.chest
execute if score #trigger trigger.dabsu matches 124 run data modify storage dabsu:run equipment.mainhand set from storage dabsu:run equipment.legs
execute if score #trigger trigger.dabsu matches 125 run data modify storage dabsu:run equipment.mainhand set from storage dabsu:run equipment.feet
execute if score #trigger trigger.dabsu matches 126 run data modify storage dabsu:run equipment.mainhand set from storage dabsu:run equipment.body
execute if score #trigger trigger.dabsu matches 127 run data modify storage dabsu:run equipment.mainhand set from storage dabsu:run equipment.saddle


execute unless data storage dabsu:run equipment.mainhand.id run return fail

execute at @s run summon item ~ ~ ~ {Item:{id:"barrier"},Tags:["dabsu.temp"]}
execute at @s as @e[type=item,tag=dabsu.temp,distance=..0.1] run function dabsu:z_priq/edit/equipment/copied_item