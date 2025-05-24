scoreboard players operation #index calc.dabsu = #trigger trigger.dabsu
scoreboard players remove #index calc.dabsu 201
data modify storage dabsu:run index set value {index:0}
execute store result storage dabsu:run index.index int 1 run scoreboard players get #index calc.dabsu

data modify storage dabsu:run run.cmd set value "potentials"
function dabsu:z_private_d/lines/cmd/execute_quickedit with storage dabsu:run run