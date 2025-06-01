execute if score @s waiting.dabsu matches 10 run return run function dabsu:z_priq/menu/gen/index

function dabsu:z_private_d/uid/get
data modify storage dabsu:run run set from storage dabsu:user data[0].editing


execute if score @s waiting.dabsu matches 11 run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/edit/equipment/recive_input"}
data modify storage dabsu:run proceed merge from storage dabsu:run run
function dabsu:z_priq/edit/exe with storage dabsu:run proceed