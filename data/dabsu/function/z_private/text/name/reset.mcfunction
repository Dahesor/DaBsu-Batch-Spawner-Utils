function dabsu:z_private/text/tellraw {text:{text:"wand",color:"green"}}
data modify storage dabsu:run new_name set value {"text": "DaBsu ","color": "gray",extra:[]}
data modify storage dabsu:run new_name.extra[] append from storage dabsu:run text
execute if items entity @s weapon ghast_tear[custom_data~{dabsu:{is_wand:1b}}] run item modify entity @s weapon dabsu:change_name
execute if items entity @s weapon.offhand ghast_tear[custom_data~{dabsu:{is_wand:1b}}] run item modify entity @s weapon.offhand dabsu:change_name