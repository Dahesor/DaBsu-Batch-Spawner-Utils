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
loot give @s loot dabsu:wand_