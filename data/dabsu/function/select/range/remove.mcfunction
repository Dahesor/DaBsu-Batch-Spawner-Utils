# Remove spawners that are within a distance of $(r) blocks from the execution to selection. Spawners must be loaded.
# 向选区移除距离执行点 $(r) 格子内的刷怪笼。刷怪笼必须处于已加载区块内。


scoreboard players set %mute calc.dabsu 1

$execute as @e[type=marker,tag=dabsu.marker,distance=..$(r)] at @s run function dabsu:z_private/select/remove_self
scoreboard players reset %mute calc.dabsu

$function dabsu:z_private/text/tellraw_self {text:{text:"modifying_distance",color:"green",extra:["$(r)"]}}