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
function dabsu:z_private/text/get
data modify storage dabsu:run joint set value []
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.0"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.1"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.2"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.3"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.4"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.5"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.6"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.7"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.8"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.9"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.10"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.11"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.12"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.13"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.14"
data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.15"
function dabsu:z_private/text/tellraw {text:{text:"wand",color:"green"}}
loot replace entity @s weapon loot dabsu:wand_