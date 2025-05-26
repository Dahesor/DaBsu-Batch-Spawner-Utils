advancement revoke @s only dabsu:inv
execute if entity @s[tag=dabsu.used_wand] run return fail
tag @s add dabsu.used_wand
execute unless items entity @s weapon.offhand ghast_tear[custom_data~{dabsu:{is_wand:1b}}] run return fail

#Give back wand
# Tag to allow other datapacks' inventory changed to avoid triggering during this
tag @s add dabsu.offhand

item replace entity @s weapon.offhand from entity @s weapon
clear @s ghast_tear[custom_data~{dabsu:{is_wand:1b}}]
function dabsu:z_private/text/tellraw {text:{text:"wand_lore",color:"gray"}}
data modify storage dabsu:run joint set from storage dabsu:run text
function dabsu:z_private/text/tellraw {text:{text:"wand",color:"green"}}
loot replace entity @s weapon.mainhand loot dabsu:wand_

tag @s remove dabsu.offhand

execute if entity @s[tag=dabsu.quick_edit] run scoreboard players set @s trigger.dabsu 101
execute if entity @s[tag=dabsu.quick_edit] if predicate dabsu:sneaking run scoreboard players set @s trigger.dabsu 102
execute if score @s trigger.dabsu matches 1.. run function dabsu:z_private_d/trigger
