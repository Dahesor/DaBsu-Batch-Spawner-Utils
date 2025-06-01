execute if score #input input.dabsu matches 300 run return run function dabsu:z_priq/edit/equipment/del_slot
scoreboard players set $raw calc.dabsu 0
scoreboard players remove #input input.dabsu 100
execute if score #input input.dabsu matches 100.. run scoreboard players set $raw calc.dabsu 1
execute if score #input input.dabsu matches 100.. run scoreboard players remove #input input.dabsu 100
data modify storage dabsu:run run set value {index:0,slot:"",item:{}}
execute store result storage dabsu:run run.index int 1 run scoreboard players get #input input.dabsu
function dabsu:z_priq/edit/equipment/__get_item with storage dabsu:run run
execute if score $raw calc.dabsu matches 0 run data modify storage dabsu:run item.count set value 1
scoreboard players reset $raw
data modify storage dabsu:run run.index set from storage dabsu:user data[0].editing.index
execute if data storage dabsu:user data[0].editing{slot:130} run data modify storage dabsu:run run.slot set value "mainhand"
execute if data storage dabsu:user data[0].editing{slot:131} run data modify storage dabsu:run run.slot set value "offhand"
execute if data storage dabsu:user data[0].editing{slot:132} run data modify storage dabsu:run run.slot set value "head"
execute if data storage dabsu:user data[0].editing{slot:133} run data modify storage dabsu:run run.slot set value "chest"
execute if data storage dabsu:user data[0].editing{slot:134} run data modify storage dabsu:run run.slot set value "legs"
execute if data storage dabsu:user data[0].editing{slot:135} run data modify storage dabsu:run run.slot set value "feet"
execute if data storage dabsu:user data[0].editing{slot:136} run data modify storage dabsu:run run.slot set value "body"
execute if data storage dabsu:user data[0].editing{slot:137} run data modify storage dabsu:run run.slot set value "saddle"

data remove storage dabsu:run item.Slot
data modify storage dabsu:run form set value {form:{}}
data modify storage dabsu:run form set from storage dabsu:run run
data modify storage dabsu:run form.item set from storage dabsu:run item
#data modify storage dabsu:run form.form set from storage dabsu:run form

execute as @e[type=marker,distance=..0.2,limit=1,tag=dabsu.marker] run function dabsu:z_private/modify/common/replace_equipment with storage dabsu:run form

execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1 1
scoreboard players set @s trigger.dabsu 112