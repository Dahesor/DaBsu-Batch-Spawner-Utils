# Add spawners that are within a distance of $(r) blocks from the execution to selection. Spawners must be loaded.
# 向选区添加距离执行点 $(r) 格子内的刷怪笼。刷怪笼必须处于已加载区块内。


scoreboard players set %select_count calc.dabsu 0
scoreboard players set %mute calc.dabsu 1

$execute as @e[type=marker,tag=dabsu.marker,distance=..$(r)] at @s run function dabsu:z_private/select/add_self
scoreboard players reset %mute calc.dabsu

execute unless score %select_count calc.dabsu matches 1.. run return run function dabsu:z_private/text/tellraw_self {text:{text:"selected_nothing",color:"gray"}}


function dabsu:z_private/text/tellraw {text:{text:"count_selected",color:"green",extra:[{score:{name:"%select_count",objective:"calc.dabsu"}}," (",{"selector":"@s"},")"]}}
data modify storage dabsu:run nbt_to_string.input set from storage dabsu:run text
function dabsu:z_private/mod/nbt_to_string/get_interpreted
tellraw @a {storage:"dabsu:run",nbt:"nbt_to_string.output",interpret:true}
