scoreboard players operation #index calc.dabsu = #input input.dabsu
scoreboard players remove #index calc.dabsu 100
data modify storage dabsu:run index set value {index:0}
execute store result storage dabsu:run index.index int 1 run scoreboard players get #index calc.dabsu

function dabsu:z_private_d/uid/get
data modify storage dabsu:run run set from storage dabsu:user data[0].editing
data modify storage dabsu:user data[0].editing.index set from storage dabsu:run index.index
data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/single_element"}
data modify storage dabsu:run proceed merge from storage dabsu:run run
function dabsu:z_priq/edit/exe with storage dabsu:run proceed