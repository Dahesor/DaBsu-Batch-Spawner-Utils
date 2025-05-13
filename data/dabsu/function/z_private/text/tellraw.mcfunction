$data modify storage dabsu:run text set value $(text)

execute if score @s lang.dabsu matches 1 run data modify storage dabsu:run lang.this set from storage dabsu:run lang.zh_cn
execute unless score @s lang.dabsu matches 1.. run data modify storage dabsu:run lang.this set from storage dabsu:run lang.en

data modify storage dabsu:run run set value {key:""}
data modify storage dabsu:run run.key set from storage dabsu:run text.text
function dabsu:z_private/text/proc/replace with storage dabsu:run run

tellraw @s {storage:"dabsu:run",nbt:"text",interpret:true}