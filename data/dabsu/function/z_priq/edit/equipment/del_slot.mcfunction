data modify storage dabsu:run run set value {index:0,slot:""}
data modify storage dabsu:run run.index set from storage dabsu:user data[0].editing.index

execute if data storage dabsu:user data[0].editing{slot:130} run data modify storage dabsu:run run.slot set value "mainhand"
execute if data storage dabsu:user data[0].editing{slot:131} run data modify storage dabsu:run run.slot set value "offhand"
execute if data storage dabsu:user data[0].editing{slot:132} run data modify storage dabsu:run run.slot set value "head"
execute if data storage dabsu:user data[0].editing{slot:133} run data modify storage dabsu:run run.slot set value "chest"
execute if data storage dabsu:user data[0].editing{slot:134} run data modify storage dabsu:run run.slot set value "legs"
execute if data storage dabsu:user data[0].editing{slot:135} run data modify storage dabsu:run run.slot set value "feet"
execute if data storage dabsu:user data[0].editing{slot:136} run data modify storage dabsu:run run.slot set value "body"
execute if data storage dabsu:user data[0].editing{slot:137} run data modify storage dabsu:run run.slot set value "saddle"

execute as @e[type=marker,distance=..0.2,limit=1,tag=dabsu.marker] run function dabsu:z_private/modify/common/del_equipment with storage dabsu:run run

execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1 1
scoreboard players set @s trigger.dabsu 112