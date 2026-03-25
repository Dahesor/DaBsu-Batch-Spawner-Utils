function dabsu:z_private_d/uid/get
scoreboard players remove #input input.dabsu 100
data modify storage dabsu:run run set value {index:0}
execute store result storage dabsu:run run.index int 1 run scoreboard players get #input input.dabsu
function dabsu:z_priq/edit/equipment/__get_item with storage dabsu:run run

execute at @s run summon item ~ ~ ~ {Item:{id:"barrier"},Tags:["dabsu.temp"]}
execute at @s as @e[type=item,tag=dabsu.temp,distance=..0.1] run function dabsu:z_priq/edit/equipment/copied_item