function dabsu:z_private_d/uid/get
data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/gen/read_data"}
data modify storage dabsu:run proceed merge from storage dabsu:user data[0].editing
function dabsu:z_priq/edit/exe with storage dabsu:run proceed

scoreboard players set #input input.dabsu 100

execute if data storage dabsu:run spawner.SpawnPotentials[0] unless data storage dabsu:run spawner.SpawnPotentials[1] run return run function dabsu:z_priq/menu/gen/index
scoreboard players set #trigger trigger.dabsu 102
function dabsu:z_priq/requests