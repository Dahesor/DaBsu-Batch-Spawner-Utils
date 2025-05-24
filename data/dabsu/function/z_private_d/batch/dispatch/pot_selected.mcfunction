scoreboard players operation #index calc.dabsu = #input input.dabsu
scoreboard players remove #index calc.dabsu 100
data modify storage dabsu:run index set value {index:0}
execute store result storage dabsu:run index.index int 1 run scoreboard players get #index calc.dabsu

function dabsu:z_private_d/batch/edit_page/samepot/element