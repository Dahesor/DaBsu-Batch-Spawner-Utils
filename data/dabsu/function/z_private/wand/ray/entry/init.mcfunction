scoreboard players set %update calc.dabsu 0
execute unless score %remainder calc.dabsu matches 1 unless entity @s[tag=dabsu.temp] run return fail

scoreboard players set %update calc.dabsu 1

function dabsu:z_private/wand/ray/get_data

#General
data modify storage dabsu:run element set from storage dabsu:run run
data modify storage dabsu:run id set from storage dabsu:run element.data.entity.id
execute unless data storage dabsu:run element.data.entity.AbsorptionAmount run data modify storage dabsu:run element.data.entity.AbsorptionAmount set value "0"
execute store result score $length calc.dabsu run data get storage dabsu:run id
execute if score $length calc.dabsu matches 11.. run function dabsu:z_private/mod/remove_minecraft
data modify storage dabsu:run temp3 set value {id:""}
data modify storage dabsu:run temp3.id set from storage dabsu:run id
function dabsu:z_private/wand/ray/entry/get_translate with storage dabsu:run temp3


#Spec.
execute unless entity @s[tag=dabsu.temp] run return run function dabsu:z_private/wand/ray/entry/hold
execute if entity @s[tag=dabsu.temp] run function dabsu:z_private/wand/ray/entry/recive
tag @s remove dabsu.temp