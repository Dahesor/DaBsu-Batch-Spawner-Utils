scoreboard players operation @s ctrl.dabsu = #case calc.dabsu
#playsound block.note_block.harp master @s ~ ~ ~ 1 1.059463 1
#playsound block.note_block.harp master @s ~ ~ ~ 1 1.33484 1

data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/gui/edit/get_current"}
data modify storage dabsu:run proceed merge from storage dabsu:user data[0].editing
function dabsu:z_priq/edit/exe with storage dabsu:run proceed

execute store result score #step_x calc.dabsu run data get storage dabsu:run spawner.SpawnRange
function dabsu:z_priq/gui/sound/scale

return 1