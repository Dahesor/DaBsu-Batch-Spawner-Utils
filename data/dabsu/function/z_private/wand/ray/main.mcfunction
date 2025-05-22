execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} align xyz positioned ~0.5 ~0.5 ~0.5 run return run kill @e[type=#dabsu:ray_display,distance=..0.1,tag=dabsu.displayer]

data modify storage dabsu:run spawner set from block ~ ~ ~
function dabsu:z_private/wand/ray/get_rotation

scoreboard players set %remainder calc.dabsu 50
scoreboard players operation %devide calc.dabsu = $gametime calc.dabsu
execute store result score #var calc.dabsu run data get storage dabsu:run spawner.SpawnPotentials
scoreboard players add #var calc.dabsu 1
execute unless data storage dabsu:run spawner.SpawnPotentials[0] if data storage dabsu:run spawner.SpawnData.entity.id run scoreboard players add #var calc.dabsu 1
scoreboard players operation %remainder calc.dabsu *= #var calc.dabsu
scoreboard players operation %devide calc.dabsu %= %remainder calc.dabsu
scoreboard players operation %remainder calc.dabsu = %devide calc.dabsu
scoreboard players operation %remainder calc.dabsu %= #50 calc.dabsu
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=text_display,distance=..0.1,tag=dabsu.displayer] summon text_display run function dabsu:z_private/wand/ray/display_self

function dabsu:z_private/wand/ray/generate_text

scoreboard players operation #this uid.dabsu = @s uid.dabsu

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=text_display,distance=..0.1,tag=dabsu.displayer] run function dabsu:z_private/wand/ray/update_display