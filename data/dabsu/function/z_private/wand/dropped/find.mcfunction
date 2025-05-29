scoreboard players reset @s dropWand.dabsu

kill @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",components:{"minecraft:custom_data":{dabsu:{is_wand:1b}}}}}]

execute if predicate dabsu:sneaking unless entity @s[tag=dabsu.quick_edit] run return fail
execute if items entity @s weapon * run return fail
execute if predicate dabsu:sneaking if entity @s[tag=dabsu.quick_edit] run loot replace entity @s weapon loot dabsu:wand_
execute if predicate dabsu:sneaking if entity @s[tag=dabsu.quick_edit] run return run function dabsu:z_priq/selected/remote_uncall

tag @s add dabsu._edit
function dabsu:z_private/wand/dropped/open_dialog
tag @s remove dabsu._edit

clear @s ghast_tear[custom_data~{dabsu:{is_wand:1b}}]

function dabsu:z_private/text/tellraw {text:{text:"wand_lore",color:"gray"}}
data modify storage dabsu:run joint set from storage dabsu:run text
function dabsu:z_private/text/tellraw {text:{text:"wand",color:"green"}}
loot replace entity @s weapon loot dabsu:wand_