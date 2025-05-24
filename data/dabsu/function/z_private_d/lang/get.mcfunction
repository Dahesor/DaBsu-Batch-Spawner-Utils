$data modify storage dabsu:run input.key set value $(key)

execute if score @s lang.dabsu matches 1 run data modify storage dabsu:run lang.this set from storage dabsu:run lang.zh_cn
execute unless score @s lang.dabsu matches 1.. run data modify storage dabsu:run lang.this set from storage dabsu:run lang.en
function dabsu:z_private_d/lang/replace with storage dabsu:run input