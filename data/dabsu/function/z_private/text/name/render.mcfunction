execute unless items entity @s weapon ghast_tear[custom_data~{dabsu:{is_wand:1b}}] run title @s actionbar [{text:"[DaBsu] ",color:"green"},{nbt:"new_name",storage:"dabsu:run",italic:false,interpret:true}]
execute unless items entity @s weapon ghast_tear[custom_data~{dabsu:{is_wand:1b}}] run return run function dabsu:z_private/text/name/reset

tag @s[tag=!dabsu.namecaster] add dabsu.namecaster_temp
tag @s remove dabsu.namecaster
tag @s[tag=dabsu.namecaster_temp] add dabsu.namecaster
tag @s remove dabsu.namecaster_temp

function dabsu:z_private/text/tellraw {text:{text:"wand",color:"green",italic:false}}
data modify storage dabsu:run text.extra set value [{text:": ",color:"gray"}]
data modify storage dabsu:run text.extra append from storage dabsu:run new_name
execute if entity @s[tag=dabsu.namecaster] run data modify storage dabsu:run text.extra append value {text:" "}
data modify storage dabsu:run new_name set from storage dabsu:run text
execute if items entity @s weapon ghast_tear[custom_data~{dabsu:{is_wand:1b}}] run item modify entity @s weapon dabsu:change_name