
data modify storage dabsu:run run set value {data:{},weight:100}
execute unless data storage dabsu:run spawner.SpawnPotentials[0] if data storage dabsu:run spawner.SpawnData.entity.id run data modify storage dabsu:run run.data set from storage dabsu:run spawner.SpawnData

scoreboard players operation #var calc.dabsu = %devide calc.dabsu
scoreboard players remove #var calc.dabsu 50

function dabsu:z_private/wand/ray/loop_pot

