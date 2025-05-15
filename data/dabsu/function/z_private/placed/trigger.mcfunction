advancement revoke @s only dabsu:place_spawner

scoreboard players set $recorded calc.dabsu 0
data modify storage dabsu:run item set from entity @s equipment.offhand
execute if items entity @s weapon spawner run data modify storage dabsu:run item set from entity @s SelectedItem
execute if data storage dabsu:run item.components."minecraft:custom_data".dabsu{saved_potential:1b} run function dabsu:z_private/placed/check_modify

data modify storage dabsu:run in set from entity @s Dimension

execute at @s anchored eyes if function dabsu:z_private/mod/raycast/place_block run return 1
execute at @s anchored eyes if function dabsu:z_private/mod/raycast/find_block run return 2

function dabsu:z_private/text/tellraw {text:{text:"spawner_missed",color:"red"}}
tellraw @s {storage:"dabsu:run",nbt:"text",interpret:true}
return fail