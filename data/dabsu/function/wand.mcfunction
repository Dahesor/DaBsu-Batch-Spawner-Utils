clear @s ghast_tear[custom_data~{dabsu:{is_wand:1b}}]

function dabsu:z_private/text/tellraw {text:{text:"wand_lore",color:"gray"}}
data modify storage dabsu:run joint set from storage dabsu:run text
function dabsu:z_private/text/tellraw {text:{text:"wand",color:"green"}}
loot give @s loot dabsu:wand_